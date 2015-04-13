module GodaddyApi
  class KeyMapping
    include Kartograph::DSL

    kartograph do
      mapping Key
      root_key plural: 'results', scopes: [:read]

      property :keyId, scopes: [:read]
      property :name, scopes: [:read]
    end
  end
end
