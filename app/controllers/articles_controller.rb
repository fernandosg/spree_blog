class Spree::ArticlesController < Spree::StoreController
  before_action :set_article, except: :index

  def index
    @articles = Spree::Articles.all
  end

  def show
  end

  private
  def set_article
    @article = Spree::Article.find_by_slug(params[:slug])
  end
end
