Deface::Override.new(virtual_path: 'spree/layouts/admin',
  name: 'add_js_resource_for_froala',
  insert_bottom: "[data-hook='admin_footer_scripts']",
  text:"
  <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/froala-editor@3.0.0-rc.2/js/froala_editor.pkgd.min.js'></script>
  <%= content_for(:extrajs) %>
  "
)

Deface::Override.new(virtual_path: 'spree/layouts/admin',
  name: 'add_css_resource_for_froala',
  insert_bottom: "[data-hook='admin_inside_head']",
  text:"<link href='https://cdn.jsdelivr.net/npm/froala-editor@3.0.0-rc.2/css/froala_editor.pkgd.min.css' rel='stylesheet' type='text/css' />"
)
