module GodaddyApi
  class ImageResource < ResourceKit::Resource
    resources do
      action :all, 'GET /images' do
        handler(200) { |response| ImageMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /images/:id' do
        handler(200) { |response| ImageMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /images' do
        body { |object| ImageMapping.representation_for(:create, object) }
        handler(201) { |response| ImageMapping.extract_single(response.body, :read) }
        # Error handling
        # handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :actions, 'GET /images/:id/actions' do
        handler(200) { |response| ActionMapping.extract_collection(response.body, :read) }
      end

      action :destroy, 'POST /images/:id/destroy' do
        handler(204) { |response| true }
      end
    end
  end
end
