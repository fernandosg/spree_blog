class CreateSpreeBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_blog_comments do |t|
      t.reference :spree_blog_article
      t.reference :spree_user
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
