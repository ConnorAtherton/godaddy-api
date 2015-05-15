module GodaddyApi
  class KeyMapping
    include Kartograph::DSL

    kartograph do
      mapping Key
      root_key plural: 'results', scopes: [:read]

      property :keyId, :name, scopes: [:read]
      property :key, :name, scopes: [:create]
    end
  end
end
