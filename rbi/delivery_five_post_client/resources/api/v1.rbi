# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        sig do
          returns(DeliveryFivePostClient::Resources::API::V1::GetLabelStatuses)
        end
        attr_reader :get_label_statuses

        sig { returns(DeliveryFivePostClient::Resources::API::V1::Partners) }
        attr_reader :partners

        sig { returns(DeliveryFivePostClient::Resources::API::V1::Tariff) }
        attr_reader :tariff

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
