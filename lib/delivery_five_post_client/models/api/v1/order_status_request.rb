# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderStatusRequest < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute order_ids
          #   Массив UUID заказов / Array of order UUIDs
          #
          #   @return [Array<String>, nil]
          optional :order_ids, DeliveryFivePostClient::Internal::Type::ArrayOf[String], api_name: :orderIds

          # @!attribute sender_order_ids
          #   Массив ID заказов партнера / Array of partner order IDs
          #
          #   @return [Array<String>, nil]
          optional :sender_order_ids,
                   DeliveryFivePostClient::Internal::Type::ArrayOf[String],
                   api_name: :senderOrderIds

          # @!method initialize(order_ids: nil, sender_order_ids: nil)
          #   Запрос на получение статуса заказов / Order status request
          #
          #   @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          #   @param sender_order_ids [Array<String>] Массив ID заказов партнера / Array of partner order IDs
        end
      end
    end
  end
end
