class Spree::Article < ApplicationRecord
  belongs_to :user
  belongs_to :article_category
end
