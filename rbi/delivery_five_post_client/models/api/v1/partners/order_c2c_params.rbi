# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class OrderC2cParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::OrderC2cParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Грузоместа / Cargoes
            sig { returns(T::Array[DeliveryFivePostClient::API::V1::Cargo]) }
            attr_accessor :cargoes

            # Стоимостные параметры заказа / Order cost parameters
            sig { returns(DeliveryFivePostClient::API::V1::OrderCost) }
            attr_reader :cost

            sig do
              params(
                cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash
              ).void
            end
            attr_writer :cost

            # Информация о клиенте / Client information
            sig { returns(DeliveryFivePostClient::API::V1::ClientInfo) }
            attr_reader :receiver

            sig do
              params(
                receiver: DeliveryFivePostClient::API::V1::ClientInfo::OrHash
              ).void
            end
            attr_writer :receiver

            # Точка получения / Receiver location
            sig { returns(DeliveryFivePostClient::API::V1::ReceiverLocation) }
            attr_reader :receiver_location

            sig do
              params(
                receiver_location:
                  DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash
              ).void
            end
            attr_writer :receiver_location

            # Информация о клиенте / Client information
            sig { returns(DeliveryFivePostClient::API::V1::ClientInfo) }
            attr_reader :sender

            sig do
              params(
                sender: DeliveryFivePostClient::API::V1::ClientInfo::OrHash
              ).void
            end
            attr_writer :sender

            # Точка получения / Receiver location
            sig { returns(DeliveryFivePostClient::API::V1::ReceiverLocation) }
            attr_reader :sender_location

            sig do
              params(
                sender_location:
                  DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash
              ).void
            end
            attr_writer :sender_location

            # ID заказа отправителя / Sender order ID
            sig { returns(String) }
            attr_accessor :sender_order_id

            # ID заказа клиента / Client order ID
            sig { returns(T.nilable(String)) }
            attr_reader :client_order_id

            sig { params(client_order_id: String).void }
            attr_writer :client_order_id

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
              ).returns(T.attached_class)
            end
            def self.new(
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

            sig do
              override.returns(
                {
                  cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo],
                  cost: DeliveryFivePostClient::API::V1::OrderCost,
                  receiver: DeliveryFivePostClient::API::V1::ClientInfo,
                  receiver_location:
                    DeliveryFivePostClient::API::V1::ReceiverLocation,
                  sender: DeliveryFivePostClient::API::V1::ClientInfo,
                  sender_location:
                    DeliveryFivePostClient::API::V1::ReceiverLocation,
                  sender_order_id: String,
                  client_order_id: String,
                  request_options: DeliveryFivePostClient::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
