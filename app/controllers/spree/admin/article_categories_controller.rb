class Spree::Admin::ArticleCategoriesController < Spree::Admin::ResourceController
  before_action :collection, only: :index¿

  create.before :update_author_user

  def index
    session[:return_to] = request.url
    respond_with(@collection)
  end

  def new
    @article_category = Spree::ArticleCategory.new
  end

  def edit
    @article_category = Spree::ArticleCategory.find(params[:id])
  end

  def create
    @article_category = Spree::ArticleCategory.new permitted_resource_params
    invoke_callbacks(:update, :before)
    return render action: :edit unless @article_category.save
    respond_to do |format|
      format.html{
        redirect_to admin_article_categories_url, notice: Spree.t(:article_category_successfully)
      }
    end
  end

  def show
    session[:return_to] ||= request.referer
    respond_to do |format|
      format.html
    end
  end

  def edit
  end

  private
  def collection
    @collection = Spree::ArticleCategory.all
  end
end
