class Spree::Admin::ArticlesController < Spree::Admin::ResourceController
  before_action :collection, only: :index

  def index
    session[:return_to] = request.url
    respond_with(@collection)
  end

  def new
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
end
