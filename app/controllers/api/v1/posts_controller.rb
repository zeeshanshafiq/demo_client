class Api::V1::PostsController < ApiController
  respond_to :json

  def update
    post = Post.find(params[:id])
    if post.update_attributes(post_params)
      render json: post
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:comment)
  end
end