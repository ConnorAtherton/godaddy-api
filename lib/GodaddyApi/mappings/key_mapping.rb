module GodaddyApi
  class KeyMapping
    include Kartograph::DSL

    kartograph do
      mapping Key
      root_key plural: 'keys', singular: 'key', scopes: [:read]

      property :keyId, scopes: [:read]
      property :name, scopes: [:read]
    end
  end
end
