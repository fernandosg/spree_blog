class Spree::Blog::ArticlesController < Spree::BaseGemController
  before_action :set_article, except: :index

  def initialize
    @model_configuration = :blog_configuration
    super
  end

  def show
  end

  private
  def set_article
    @article = Spree::Article.find_by_slug(params[:slug])
  end
end
