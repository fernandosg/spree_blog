module Concerns::TravelApp::ConfigGemModel
  extend ActiveSupport::Concern
  included do
    attr_accessor :attributes_config
    after_initialize :define_options

    def self.instance_config
      return self.new if first.nil?
      return self.first
    end

    def define_options
      if self.options.nil? || self.options.empty?
        self.options = {}
        self.init_attributes
        @attributes_config.each do |sym|
          self.options[sym] = ""
        end
      end
    end

    def handle_change params
      self.options = params
      self.save
    end
  end
end
