module GodaddyApi
  class ImageMapping
    include Kartograph::DSL

    kartograph do
      mapping Image
      root_key plural: 'images', singular: 'image', scopes: [:read]

      property :imageId, scopes: [:read]
      property :version, scopes: [:read]
      property :status, scopes: [:read]
      property :sizeMb, scopes: [:read]
      property :sourceServer, scopes: [:read]
      property :rootImage, scopes: [:read]
      property :type, scopes: [:read]
    end
  end
end
