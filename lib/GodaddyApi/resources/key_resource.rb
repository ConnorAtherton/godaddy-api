module GodaddyApi
  class KeyResource < ResourceKit::Resource
    resources do
      action :all, 'GET /keys' do
        handler(200) { |response| KeyMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /keys/:id' do
        handler(200) { |response| KeyMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /keys' do
        body { |object| KeyMapping.representation_for(:create, object) }
        handler(201) { |response| KeyMapping.extract_single(response.body, :read) }
        # Error handling
        # handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :destroy, 'DELETE /keys/:id' do
        handler(204) { |response| true }
      end
    end
  end
end
