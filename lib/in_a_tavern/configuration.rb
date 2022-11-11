module InATavern
  class Configuration
    # The InATavern actor is the handle of the user for this site.
    #
    # @return InATavern actor
    attr_accessor :actor
  end

  # @return [InATavern::Configuration] InATavern's current config
  def self.config
    @config ||= Configuration.new
  end

  # Set InATavern's config
  #
  # @param config [InATavern::Configuration]
  def self.config=(config)
    @config = config
  end

  # Modify InATavern's current config
  #
  # @yieldparam [InATavern::Configuration] config current InATavern config
  # ```
  # InATavern.configure do |config|
  #   config.actor = "conan"
  # end
  # ```
  def self.configure
    yield config
  end
end
