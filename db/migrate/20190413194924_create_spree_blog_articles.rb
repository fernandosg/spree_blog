class CreateSpreeBlogArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_blog_articles do |t|
      t.string :title
      t.text :body
      t.references :spree_user, foreign_key: true
      t.datetime :available_on
      t.reference :spree_blog_category

      t.timestamps
    end
  end
end
