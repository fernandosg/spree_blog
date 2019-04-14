class CreateSpreeArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_articles do |t|
      t.string :title
      t.text :body
      t.datetime :available_on
      t.references :user
      t.references :article_category

      t.timestamps
    end
  end
end
