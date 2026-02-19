# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Partners
          # Создание возвратного заказа. senderOrderId формируется как RT + barcode / Create
          # return order. senderOrderId format: RT + barcode
          sig do
            params(
              base_order:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder::OrHash,
              cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
              return_location_id: String,
              warehouse:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse::OrHash,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse
            )
          end
          def create_return_order(
            # Базовый заказ для возврата / Base order for return
            base_order:,
            # Грузоместа для возврата / Return cargoes
            cargoes:,
            # UUID в формате v4 / UUID in v4 format
            return_location_id:,
            # Склад возврата / Return warehouse
            warehouse:,
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
