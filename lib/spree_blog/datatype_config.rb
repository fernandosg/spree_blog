module SpreeBlog
  class << self
    attr_accessor :configuration
  end

  def self.config
    self.configuration ||= Configuration.new
    yield(configuration)
    self.configuration.attributes_to_array
  end

  class Configuration
    attr_accessor :attributes_config

    def initialize
      @attributes_config = {}
      @attributes = []
    end

    def attributes_to_array
      @attributes = @attributes_config.keys?
    end
  end
end
