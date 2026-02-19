# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        class Partners
          class Orders
            # Отмена заказа / Cancel order
            sig do
              params(
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).void
            end
            def cancel_order(
              # UUID в формате v4 / UUID in v4 format
              order_id,
              request_options: {}
            )
            end

            # Универсальное создание заказа / Universal order creation
            sig do
              params(
                cargoes:
                  T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
                client: DeliveryFivePostClient::API::V1::ClientInfo::OrHash,
                cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash,
                receiver:
                  DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash,
                sender_order_id: String,
                warehouse:
                  DeliveryFivePostClient::API::V1::OrderCreate::Warehouse::OrHash,
                brand_name: String,
                client_order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(DeliveryFivePostClient::API::V1::OrderCreateResponse)
            end
            def create_order(
              # Грузоместа / Cargoes
              cargoes:,
              # Информация о клиенте / Client information
              client:,
              # Стоимостные параметры заказа / Order cost parameters
              cost:,
              # Точка получения / Receiver location
              receiver:,
              # ID заказа партнера / Partner order ID
              sender_order_id:,
              # Ссылка на склад / Warehouse reference
              warehouse:,
              # Название бренда отправителя / Sender brand name
              brand_name: nil,
              # ID заказа клиента / Client order ID
              client_order_id: nil,
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
