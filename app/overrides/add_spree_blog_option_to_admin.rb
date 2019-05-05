Deface::Override.new(virtual_path: 'spree/layouts/admin',
  name: 'add_admin_reviews_index_menu',
  insert_bottom: "[data-hook='admin_tabs']") do
  '
    <ul class="nav nav-sidebar">
      <%= tab Spree::Article, url: admin_articles_path, icon: "file", label: "Blog" %>
    </ul>
  '
end
