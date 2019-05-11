class Spree::Admin::BlogController < TravelApp::Admin::ConfigGemController
  def initialize
    @model_class = :blog_configuration
    super
  end
end
