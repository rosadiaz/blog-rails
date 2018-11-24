class Api::V1::PostsController < ApplicationController
  def create
    post = Post.new post_params
    
    post.save
    render json: post, status: :created
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
