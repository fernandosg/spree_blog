class AddSlugToSpreeArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_articles, :slug, :string
    add_index :spree_articles, :slug, unique: true
  end
end
