# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        sig { returns(DeliveryFivePostClient::Resources::API::V2::Partners) }
        attr_reader :partners

        sig { returns(DeliveryFivePostClient::Resources::API::V2::Points) }
        attr_reader :points

        # @api private
        sig do
          params(client: DeliveryFivePostClient::Client).returns(
            T.attached_class
          )
        end
        def self.new(client:)
        end
      end
    end
  end
end
