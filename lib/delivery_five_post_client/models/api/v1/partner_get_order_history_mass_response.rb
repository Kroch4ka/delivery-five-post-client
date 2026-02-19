# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_order_history_mass
        class PartnerGetOrderHistoryMassResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute orders
          #   Массив историй заказов / Array of order histories
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order>]
          required :orders,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order] }

          # @!method initialize(orders:)
          #   Ответ с историей статусов заказов / Order history response
          #
          #   @param orders [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order>] Массив историй заказов / Array of order histories

          class Order < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute history
            #   История изменений статусов / Status change history
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History>]
            required :history,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History] }

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute sender_order_id
            #   ID заказа партнера / Partner order ID
            #
            #   @return [String]
            required :sender_order_id, String, api_name: :senderOrderId

            # @!method initialize(history:, order_id:, sender_order_id:)
            #   История статусов одного заказа / Single order status history
            #
            #   @param history [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History>] История изменений статусов / Status change history
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param sender_order_id [String] ID заказа партнера / Partner order ID

            class History < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute change_date
              #   Дата изменения / Change date
              #
              #   @return [Time]
              required :change_date, Time, api_name: :changeDate

              # @!attribute execution_status
              #   Статусы исполнения заказа / Order execution statuses
              #
              #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus]
              required :execution_status,
                       enum: -> { DeliveryFivePostClient::API::V1::ExecutionStatus },
                       api_name: :executionStatus

              # @!attribute status
              #   Статус заказа / Order status
              #
              #   @return [String]
              required :status, String

              # @!attribute error_desc
              #   Описание ошибки / Error description
              #
              #   @return [String, nil]
              optional :error_desc, String, api_name: :errorDesc

              # @!attribute mile_type
              #   Тип мили доставки / Delivery mile type
              #
              #   @return [Symbol, DeliveryFivePostClient::Models::MileType, nil]
              optional :mile_type, enum: -> { DeliveryFivePostClient::MileType }, api_name: :mileType

              # @!method initialize(change_date:, execution_status:, status:, error_desc: nil, mile_type: nil)
              #   Запись в истории статусов / Status history entry
              #
              #   @param change_date [Time] Дата изменения / Change date
              #
              #   @param execution_status [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus] Статусы исполнения заказа / Order execution statuses
              #
              #   @param status [String] Статус заказа / Order status
              #
              #   @param error_desc [String] Описание ошибки / Error description
              #
              #   @param mile_type [Symbol, DeliveryFivePostClient::Models::MileType] Тип мили доставки / Delivery mile type
            end
          end
        end
      end
    end
  end
end
