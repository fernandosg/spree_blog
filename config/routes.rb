Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resources :articles
    resources :article_categories
    namespace :blog do
      get :configuration
      post :configuration, as: :configurations
    end
  end
  namespace :blog do
    resources :articles, param: :slug
  end
  get "/blog", to: "articles#index"
end
