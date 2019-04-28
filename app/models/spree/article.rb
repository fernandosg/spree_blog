class Spree::Article < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', class_name: 'Spree::User'
  belongs_to :article_category, foreign_key: 'article_category_id', class_name: 'Spree::ArticleCategory'
  delegate :full_name, to: :user, prefix: 'get_author'
  delegate :name, to: :article_category, prefix: 'get_category'
  before_create :set_slug

  def set_slug
    if slug.nil?
      slug = title.parameterize
    else
      searching = Spree::Article.where(slug: slug).count
      slug = "#{slug}-count" if searching > 0      
    end
  end
end
