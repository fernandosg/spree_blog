class AddBodyHtmlToSpreeArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_articles, :body_html, :string
  end
end
