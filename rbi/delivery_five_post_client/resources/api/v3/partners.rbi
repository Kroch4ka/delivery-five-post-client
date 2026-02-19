# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        class Partners
          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V3::Partners::Orders
            )
          end
          attr_reader :orders

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
end
