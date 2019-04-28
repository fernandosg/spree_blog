Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resources :articles
  end
  namespace :blog do
    resources :articles, param: :slug
  end
end
