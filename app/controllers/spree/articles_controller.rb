class Spree::ArticlesController < Spree::BaseGemController
  before_action :set_article, except: :index
  include Spree::ResourceMultimediumHelper

  def initialize
    @model_configuration = :blog_configuration
    super
  end

  def index
    @articles = Spree::Article.all
  end

  private
  def set_article
    @article = Spree::Article.find_by_slug(params[:slug])
  end
end
