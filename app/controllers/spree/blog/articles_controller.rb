class Spree::Blog::ArticlesController < Spree::BaseGemController
  before_action :set_article, except: :index
  include Spree::ResourceMultimediumHelper

  def initialize
    @model_configuration = :blog_configuration
    super
  end

  def show
  end

  private
  def set_article
    @article = Spree::Article.find_by_slug(params[:slug])
    unless @article.nil?
      body_safe(@article.body)
    end
  end

  def body_safe body
    @body_safe = get_content_safe(body)
  end
end
