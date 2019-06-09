class Spree::Article < ApplicationRecord
  include Spree::ResourceMultimediumHelper
  belongs_to :user, foreign_key: 'user_id', class_name: 'Spree::User'
  belongs_to :article_category, foreign_key: 'article_category_id', class_name: 'Spree::ArticleCategory'
  delegate :full_name, to: :user, prefix: 'get_author'
  delegate :name, to: :article_category, prefix: 'get_category'
  before_save :set_slug
  after_save :update_html_content

  def set_slug
    if self.slug.nil?
      self.slug = title.parameterize
    else
      searching = Spree::Article.where(slug: slug).where.not(id: self.id).count
      self.slug = "#{self.slug}-count" if searching > 0
    end
  end

  def update_html_content
    self.update_column(:body_html, regex_tag_for_image(CGI.unescapeHTML(body)))
  end
end
