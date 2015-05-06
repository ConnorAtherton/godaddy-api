require 'virtus'

module GodaddyApi
  class Base
    include Virtus.model

    # Shared by all json responses
    attribute :createdAt
    attribute :modifiedAt
  end
end
