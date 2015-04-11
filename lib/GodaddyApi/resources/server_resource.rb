module GodaddyApi
  class ServerResource < ResourceKit::Resource
    resources do
      default_handler { |response| raise "Unexpected response status #{response.status}... #{response.body}" }

      # TODO need to write this path version everywhere
      action :all, 'GET /v1/cloud/servers' do
        handler(200) { |response| GodaddyApi::ServerMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET servers/:id' do
        handler(200) { |response| ServerMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST servers' do
        body { |object| ServerMapping.representation_for(:create, object) }
        handler(201) { |response| ServerMapping.extract_single(response.body, :read) }
        # Error handling
        # handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :actions, 'GET servers/:id/actions' do
        handler(200) { |response| ActionMapping.extract_collection(response.body, :read) }
      end

      action :destroy, 'POST servers/:id/destroy' do
        handler(204) { |response| true }
      end

      action :start, 'POST servers/:id/start' do
        handler(200) { |response| true }
      end

      action :stop, 'POST servers/:id/stop' do
        handler(200) { |response| true }
      end
    end

    # def all(*args)
    #   GodaddyApi::PaginatedResource.new(action(:all), self, *args)
    # end
  end
end
