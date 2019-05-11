class TravelApp::Admin::ConfigGemController < Spree::Admin::ResourceController
  attr_accessor :model_class
  attr_reader :instance_model_config
  before_action :define_configuration, only: [:index, :configuration]

  def index
  end

  def configuration
    if params[:commit] == "send"
      model = instance_config
      if model.handle_change gem_form_attributes
        flash[:success] = "Actualización de la gema realizada con éxito"
      else
        flash[:error] = 'Hubo un error en la actualización de la gema'
      end
      redirect_to action: :configuration
    end
  end

  private
  def instance_config
    @instance_model_config ||= eval("Spree::#{@model_class.to_s.camelize}.instance_config")
    @instance_model_config
  end

  def define_configuration
    session[:return_to] = request.url
    @configuration = instance_config
  end

  def gem_form_attributes
    params[@model_class]["options"]
  end
end
