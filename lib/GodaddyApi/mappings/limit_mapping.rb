module GodaddyApi
  class LimitMapping
    include Kartograph::DSL

    kartograph do
      mapping Limit
      root_key plural: 'limits', singular: 'limits', scopes: [:read]

      property :servers, scopes: [:read]
      property :snapshots, scopes: [:read]
      property :keys, scopes: [:read]
    end
  end
end
