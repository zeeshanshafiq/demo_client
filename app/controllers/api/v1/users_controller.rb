class Api::V1::UsersController < ApiController
  respond_to :json

  def index
    users = User.select(:name)
    render json: {owners: users.as_json(only: :name)}
  end

  def show
    user = User.find_by_name(params[:id])
    render json: {owner_name: user.try(:name)}
  end
  private
  def post_params
    params.require(:post).permit(:comment)
  end
end