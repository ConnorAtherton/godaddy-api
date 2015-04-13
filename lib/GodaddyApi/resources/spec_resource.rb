module GodaddyApi
  class SpecResource < ResourceKit::Resource
    resources do
      action :all, 'GET /v1/cloud/specs' do
        handler(200) { |response| SpecMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /v1/cloud/specs/:id' do
        handler(200) { |response| SpecMapping.extract_single(response.body, :read) }
      end
    end
  end
end
