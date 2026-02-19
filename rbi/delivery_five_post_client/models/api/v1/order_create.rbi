# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderCreate < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::OrderCreate,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Грузоместа / Cargoes
          sig { returns(T::Array[DeliveryFivePostClient::API::V1::Cargo]) }
          attr_accessor :cargoes

          # Информация о клиенте / Client information
          sig { returns(DeliveryFivePostClient::API::V1::ClientInfo) }
          attr_reader :client

          sig do
            params(
              client: DeliveryFivePostClient::API::V1::ClientInfo::OrHash
            ).void
          end
          attr_writer :client

          # Стоимостные параметры заказа / Order cost parameters
          sig { returns(DeliveryFivePostClient::API::V1::OrderCost) }
          attr_reader :cost

          sig do
            params(
              cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash
            ).void
          end
          attr_writer :cost

          # Точка получения / Receiver location
          sig { returns(DeliveryFivePostClient::API::V1::ReceiverLocation) }
          attr_reader :receiver

          sig do
            params(
              receiver:
                DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash
            ).void
          end
          attr_writer :receiver

          # ID заказа партнера / Partner order ID
          sig { returns(String) }
          attr_accessor :sender_order_id

          # Ссылка на склад / Warehouse reference
          sig do
            returns(DeliveryFivePostClient::API::V1::OrderCreate::Warehouse)
          end
          attr_reader :warehouse

          sig do
            params(
              warehouse:
                DeliveryFivePostClient::API::V1::OrderCreate::Warehouse::OrHash
            ).void
          end
          attr_writer :warehouse

          # Название бренда отправителя / Sender brand name
          sig { returns(T.nilable(String)) }
          attr_reader :brand_name

          sig { params(brand_name: String).void }
          attr_writer :brand_name

          # ID заказа клиента / Client order ID
          sig { returns(T.nilable(String)) }
          attr_reader :client_order_id

          sig { params(client_order_id: String).void }
          attr_writer :client_order_id

          # Запрос на создание заказа / Order creation request
          sig do
            params(
              cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
              client: DeliveryFivePostClient::API::V1::ClientInfo::OrHash,
              cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash,
              receiver:
                DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash,
              sender_order_id: String,
              warehouse:
                DeliveryFivePostClient::API::V1::OrderCreate::Warehouse::OrHash,
              brand_name: String,
              client_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
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
            client_order_id: nil
          )
          end

          sig do
            override.returns(
              {
                cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo],
                client: DeliveryFivePostClient::API::V1::ClientInfo,
                cost: DeliveryFivePostClient::API::V1::OrderCost,
                receiver: DeliveryFivePostClient::API::V1::ReceiverLocation,
                sender_order_id: String,
                warehouse:
                  DeliveryFivePostClient::API::V1::OrderCreate::Warehouse,
                brand_name: String,
                client_order_id: String
              }
            )
          end
          def to_hash
          end

          class Warehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::OrderCreate::Warehouse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :id

            # Ссылка на склад / Warehouse reference
            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              id:
            )
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
