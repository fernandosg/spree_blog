class Spree::ArticleComment < Spree::Base
  belongs_to :article
  belongs_to :user
end
