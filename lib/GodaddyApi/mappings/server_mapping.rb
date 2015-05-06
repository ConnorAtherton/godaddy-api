module GodaddyApi
  class ServerMapping
    include Kartograph::DSL

    kartograph do
      mapping Server
      root_key plural: 'results', scopes: [:read]

      property :serverId, scopes: [:read]
      property :image, scopes: [:read]
      property :spec, scopes: [:read]
      property :key, scopes: [:read]
      property :privateIp, scopes: [:read]
      property :username, scopes: [:read]
      property :publicIp, scopes: [:read]
      property :status, scopes: [:read]
      property :taskState, scopes: [:read]
      property :key, scopes: [:read]
      property :hostname, scopes: [:read]
      property :backups, scopes: [:read]

      # creating a server
      property :hostname, scopes: [:create]
      property :spec, scopes: [:create]
      property :image, scopes: [:create]
      property :key, scopes: [:create]
      property :username, scopes: [:create]
      property :password, scopes: [:create]
      property :backups, scopes: [:create]
      property :bootScript, scopes: [:create]
    end
  end
end
