class CreateSpreeArticleComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_article_comments do |t|
      t.text :body
      t.references :article
      t.references :user
      t.boolean :approved, default: :false

      t.timestamps
    end
  end
end
