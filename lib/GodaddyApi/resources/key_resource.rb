module GodaddyApi
  class KeyResource < ResourceKit::Resource
    resources do
      action :all, 'GET /v1/cloud/keys' do
        handler(200) { |response| KeyMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /v1/cloud/keys/:id' do
        handler(200) { |response| KeyMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /v1/cloud/keys' do
        body { |object| KeyMapping.representation_for(:create, object) }
        handler(201) { |response| KeyMapping.extract_single(response.body, :read) }
        # Error handling
        # handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :destroy, 'DELETE /v1/cloud/keys/:id' do
        handler(204) { |response| true }
      end
    end
  end
end
