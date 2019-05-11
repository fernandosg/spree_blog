Deface::Override.new(virtual_path: 'spree/layouts/admin',
  name: 'add_admin_reviews_index_menu',
  insert_bottom: "[data-hook='admin_tabs']",
  partial: 'spree/admin/articles/menu_options_blog'
)
