# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class Webhooks
      # Событие изменения статуса грузоместа / Cargo status change event
      #
      # @overload create_cargo_status(cargo_id:, change_date:, order_id:, sender_cargo_id:, status:, error_desc: nil, mile_type: nil, request_options: {})
      #
      # @param cargo_id [String] UUID в формате v4 / UUID in v4 format
      #
      # @param change_date [Time] Дата изменения статуса / Status change date
      #
      # @param order_id [String] UUID в формате v4 / UUID in v4 format
      #
      # @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
      #
      # @param status [String] Статус грузоместа / Cargo status
      #
      # @param error_desc [String] Описание ошибки / Error description
      #
      # @param mile_type [Symbol, DeliveryFivePostClient::Models::MileType] Тип мили доставки / Delivery mile type
      #
      # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see DeliveryFivePostClient::Models::WebhookCreateCargoStatusParams
      def create_cargo_status(params)
        parsed, options = DeliveryFivePostClient::WebhookCreateCargoStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks/cargo-status",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Событие изменения статуса заказа / Order status change event
      #
      # @overload create_order_status(change_date:, execution_status:, order_id:, sender_order_id:, status:, error_desc: nil, mile_type: nil, request_options: {})
      #
      # @param change_date [Time] Дата изменения статуса / Status change date
      #
      # @param execution_status [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus] Статусы исполнения заказа / Order execution statuses
      #
      # @param order_id [String] UUID в формате v4 / UUID in v4 format
      #
      # @param sender_order_id [String] ID заказа партнера / Partner order ID
      #
      # @param status [String] Статус заказа / Order status
      #
      # @param error_desc [String] Описание ошибки / Error description
      #
      # @param mile_type [Symbol, DeliveryFivePostClient::Models::MileType] Тип мили доставки / Delivery mile type
      #
      # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see DeliveryFivePostClient::Models::WebhookCreateOrderStatusParams
      def create_order_status(params)
        parsed, options = DeliveryFivePostClient::WebhookCreateOrderStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks/order-status",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [DeliveryFivePostClient::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
