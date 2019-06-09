class Spree::BaseGemController < Spree::StoreController
  #before_action :is_gem_active
  attr_reader :model_configuration

  def initialize
    super
  end

  private
  def is_gem_active
    return true #return raise ActionController::RoutingError.new('Not Found') unless eval("Spree::#{@model_configuration.to_s.camelize}.instance_config.options['is_on'] == 'true'")
  end
end
