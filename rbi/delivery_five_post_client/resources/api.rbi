# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      sig { returns(DeliveryFivePostClient::Resources::API::V1) }
      attr_reader :v1

      sig { returns(DeliveryFivePostClient::Resources::API::V2) }
      attr_reader :v2

      sig { returns(DeliveryFivePostClient::Resources::API::V3) }
      attr_reader :v3

      # @api private
      sig do
        params(client: DeliveryFivePostClient::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
