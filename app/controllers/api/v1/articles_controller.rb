class Api::V1::ArticlesController < ApiController

  def index
    user = User.includes(:articles).find_by_name(params[:user_id])
    render json: user.as_json(only: [],methods: [:owner_name], include: {articles: {only: [:id,:price,:descricption]}})
  end

  def show
    article = Article.find(params[:id])
    render json: article.as_json(only: [:id,:price,:descricption],methods: [:owner_name])
  end
end
