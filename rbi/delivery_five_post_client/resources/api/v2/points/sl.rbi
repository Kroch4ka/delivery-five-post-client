# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Points
          class Sl
            # Получение сроков доставки C2C / Get C2C delivery terms
            sig do
              params(
                from_location_id: String,
                to_location_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsResponse
              )
            end
            def get_c2c_delivery_terms(
              # UUID в формате v4 / UUID in v4 format
              from_location_id:,
              # UUID в формате v4 / UUID in v4 format
              to_location_id:,
              request_options: {}
            )
            end

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
end
