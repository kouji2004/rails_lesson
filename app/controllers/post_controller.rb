class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
     @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to post_index_path
  end

    private

  def post_params
    params.require(:post).permit(:name, :text)
  end
end
