class Spree::Article < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', class_name: 'Spree::User'
  belongs_to :article_category, foreign_key: 'article_category_id', class_name: 'Spree::ArticleCategory'
  delegate :full_name, to: :user, prefix: 'get_author'
  delegate :name, to: :article_category, prefix: 'get_category'
end
