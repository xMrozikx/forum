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

    def show
        @post = Post.find(params[:id])
    end
end
