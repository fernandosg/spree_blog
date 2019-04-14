class CreateSpreeArticleComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_article_comments do |t|
      t.text :body
      t.references :spree_article, foreign_key: true
      t.references :spree_user, foreign_key: true
      t.datetime :approved

      t.timestamps
    end
  end
end
