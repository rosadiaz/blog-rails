class Api::V1::PostsController < ApplicationController
  def create
    post = Post.new post_params
    
    post.save
    render json: post, status: :created
  end

  def index
    posts = Post.all.order(updated_at: :desc)
    render json: posts  
  end

  def show
    post = Post.find params[:id]
    render json: post
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
