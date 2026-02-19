# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderStatusRequest < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::OrderStatusRequest,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив UUID заказов / Array of order UUIDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :order_ids

          sig { params(order_ids: T::Array[String]).void }
          attr_writer :order_ids

          # Массив ID заказов партнера / Array of partner order IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sender_order_ids

          sig { params(sender_order_ids: T::Array[String]).void }
          attr_writer :sender_order_ids

          # Запрос на получение статуса заказов / Order status request
          sig do
            params(
              order_ids: T::Array[String],
              sender_order_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив UUID заказов / Array of order UUIDs
            order_ids: nil,
            # Массив ID заказов партнера / Array of partner order IDs
            sender_order_ids: nil
          )
          end

          sig do
            override.returns(
              {
                order_ids: T::Array[String],
                sender_order_ids: T::Array[String]
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
