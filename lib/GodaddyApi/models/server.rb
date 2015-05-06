module GodaddyApi
  class Server < Base
    attribute :serverId
    attribute :image
    attribute :spec
    attribute :privateIp
    attribute :username
    attribute :password
    attribute :publicIp
    attribute :status
    attribute :taskState
    attribute :key
    attribute :hostname
    attribute :backups
    attribute :bootScript
  end
end
