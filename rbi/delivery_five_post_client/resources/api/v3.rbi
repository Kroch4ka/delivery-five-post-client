# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        sig { returns(DeliveryFivePostClient::Resources::API::V3::Partners) }
        attr_reader :partners

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
