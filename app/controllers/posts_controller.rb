class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.last
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post).permit(:content))
    redirect_to root_path
  end
end
