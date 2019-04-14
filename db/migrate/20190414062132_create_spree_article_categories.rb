class CreateSpreeArticleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_article_categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
