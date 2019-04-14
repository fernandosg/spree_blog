class Spree::Admin::ArticlesController < Spree::Admin::ResourceController
  before_action :collection, only: :index
  before_action :collection_articles, only: [:edit, :new]

  create.before :update_author_user

  def index
    session[:return_to] = request.url
    respond_with(@collection)
  end

  def new
    @article = Spree::Article.new
  end

  def create
    @article = Spree::Article.new permitted_resource_params
    @article.user_id = spree_current_user.id
    invoke_callbacks(:update, :before)
    return render action: :edit unless @article.save
    respond_to do |format|
      format.html{
        redirect_to admin_articles_url, notice: Spree.t(:article_successfully)
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
    @collection = Spree::Article.all
  end

  def update_author_user
    @article.spree_user_id = Spree::User.first.id
    collection_articles
  end

  def collection_articles
    @article_categories = Spree::ArticleCategory.all
  end
end
