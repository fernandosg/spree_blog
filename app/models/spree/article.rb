class Spree::Article < Spree::Base
  belongs_to :user, foreign_key: 'spree_user_id', class_name: 'Spree::User', inverse_of: :spree_article, optional: true
  belongs_to :article_category, foreign_key: 'article_category_id', class_name: 'Spree::ArticleCategory', inverse_of: :spree_article, optional: true
end
