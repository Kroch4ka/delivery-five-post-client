# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class GetLabelStatuses
          # Проверка статуса этикетки / Check label status
          sig do
            params(
              sender_order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse
            )
          end
          def by_sender_order_ids(
            # Массив ID заказов партнера / Array of partner order IDs
            sender_order_ids:,
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
