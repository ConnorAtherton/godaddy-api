module GodaddyApi
  class LimitResource < ResourceKit::Resource
    resources do
      action :all, 'GET /limits' do
        handler(200) { |response| LimitMapping.extract_single(response.body, :read) }
      end
    end
  end
end
