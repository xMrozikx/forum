class PostsController < ApplicationController
    def new
    end

    def index
        @posts = Post.all
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :text))
        @post.save
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    def show
        @post = Post.find(params[:id])
    end

    http_basic_authenticate_with name: "lel", password: "kek",
        only: :destroy
end
