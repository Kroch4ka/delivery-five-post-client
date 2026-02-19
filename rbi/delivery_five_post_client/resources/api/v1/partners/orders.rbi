# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Orders
            sig do
              returns(
                DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo
              )
            end
            attr_reader :cargo

            # Создание заказа C2C (от клиента к клиенту) / Create C2C order (customer to
            # customer)
            sig do
              params(
                cargoes:
                  T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
                cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash,
                receiver: DeliveryFivePostClient::API::V1::ClientInfo::OrHash,
                receiver_location:
                  DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash,
                sender: DeliveryFivePostClient::API::V1::ClientInfo::OrHash,
                sender_location:
                  DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash,
                sender_order_id: String,
                client_order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse
              )
            end
            def c2c(
              # Грузоместа / Cargoes
              cargoes:,
              # Стоимостные параметры заказа / Order cost parameters
              cost:,
              # Информация о клиенте / Client information
              receiver:,
              # Точка получения / Receiver location
              receiver_location:,
              # Информация о клиенте / Client information
              sender:,
              # Точка получения / Receiver location
              sender_location:,
              # ID заказа отправителя / Sender order ID
              sender_order_id:,
              # ID заказа клиента / Client order ID
              client_order_id: nil,
              request_options: {}
            )
            end

            # Обновление данных клиента / Update client information
            sig do
              params(
                order_id: String,
                client:
                  DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client::OrHash,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).void
            end
            def update_client_info(
              # UUID в формате v4 / UUID in v4 format
              order_id,
              # Обновление информации о клиенте / Client information update
              client:,
              request_options: {}
            )
            end

            # Обнуление наложенного платежа / Reset payment value
            sig do
              params(
                order_id: String,
                payment_value: Float,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).void
            end
            def update_payment_value(
              # UUID в формате v4 / UUID in v4 format
              order_id,
              # Новая сумма наложенного платежа / New payment value
              payment_value:,
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
