# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    # @see DeliveryFivePostClient::Resources::Webhooks#create_order_status
    class WebhookCreateOrderStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
      extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
      include DeliveryFivePostClient::Internal::Type::RequestParameters

      # @!attribute change_date
      #   Дата изменения статуса / Status change date
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

      # @!method initialize(change_date:, execution_status:, order_id:, sender_order_id:, status:, error_desc: nil, mile_type: nil, request_options: {})
      #   @param change_date [Time] Дата изменения статуса / Status change date
      #
      #   @param execution_status [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus] Статусы исполнения заказа / Order execution statuses
      #
      #   @param order_id [String] UUID в формате v4 / UUID in v4 format
      #
      #   @param sender_order_id [String] ID заказа партнера / Partner order ID
      #
      #   @param status [String] Статус заказа / Order status
      #
      #   @param error_desc [String] Описание ошибки / Error description
      #
      #   @param mile_type [Symbol, DeliveryFivePostClient::Models::MileType] Тип мили доставки / Delivery mile type
      #
      #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
