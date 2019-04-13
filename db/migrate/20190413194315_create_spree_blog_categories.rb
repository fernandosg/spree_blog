class CreateSpreeBlogCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_blog_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
