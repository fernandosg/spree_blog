Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    get "blog/", to: 'blogs#index'
    resource :blog
  end
end
