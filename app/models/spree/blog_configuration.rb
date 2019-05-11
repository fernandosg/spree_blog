class Spree::BlogConfiguration < ApplicationRecord
  include Concerns::TravelApp::ConfigGemModel

  def initialize object
    @attributes_config = SpreeBlog.configuration.attributes
    super
  end

  def init_attributes
    @attributes_config = [:articles_per_page, :is_on]
  end
end
