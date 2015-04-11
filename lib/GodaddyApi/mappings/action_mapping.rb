module GodaddyApi
  class ActionMapping
    include Kartograph::DSL

    kartograph do
      mapping Action
      root_key plural: 'actions', singular: 'action', scopes: [:read]

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
