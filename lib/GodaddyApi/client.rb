require 'faraday'

module GodaddyApi
  class Client
    API_URL = 'https://api.godaddy.com'

    attr_reader :key

    def initialize(options)
      @key = options[:key]
      @secret = options[:secret]
      @resources = {}
    end

    def connection
      Faraday.new(connection_options) do |req|
        req.adapter :net_http
      end
    end

    def self.resources
      {
        images: ImageResource,
        keys: KeyResource,
        servers: ServerResource,
        limits: LimitResource,
        specs: SpecResource
      }
    end

    def resources
      @resources ||= {}
    end

    # This attaches resources to the client
    # Resources map to a specific model
    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    private

    def connection_options
      {
        url: API_URL,
        headers: {
          content_type: 'application/json',
          authorization: "sso-key #{@key}:#{@secret}"
        }
      }
    end
  end
end
