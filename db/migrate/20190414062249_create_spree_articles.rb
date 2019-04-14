class CreateSpreeArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_articles do |t|
      t.string :title
      t.text :body
      t.datetime :available_on
      t.references :spree_user, foreign_key: true
      t.references :spree_article_category, foreign_key: true

      t.timestamps
    end
  end
end
