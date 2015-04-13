module GodaddyApi
  class SpecMapping
    include Kartograph::DSL

    kartograph do
      mapping Spec
      root_key plural: 'results', scopes: [:read]

      property :specId, scopes: [:read]
      property :name, scopes: [:read]
      property :ramMb, scopes: [:read]
      property :diskGb, scopes: [:read]
      property :cpuCores, scopes: [:read]
      property :status, scopes: [:read]
    end
  end
end
