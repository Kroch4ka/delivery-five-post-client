# typed: strong

module DeliveryFivePostClient
  module Resources
    class Webhooks
      # Событие изменения статуса грузоместа / Cargo status change event
      sig do
        params(
          cargo_id: String,
          change_date: Time,
          order_id: String,
          sender_cargo_id: String,
          status: String,
          error_desc: String,
          mile_type: DeliveryFivePostClient::MileType::OrSymbol,
          request_options: DeliveryFivePostClient::RequestOptions::OrHash
        ).void
      end
      def create_cargo_status(
        # UUID в формате v4 / UUID in v4 format
        cargo_id:,
        # Дата изменения статуса / Status change date
        change_date:,
        # UUID в формате v4 / UUID in v4 format
        order_id:,
        # ID грузоместа партнера / Partner cargo ID
        sender_cargo_id:,
        # Статус грузоместа / Cargo status
        status:,
        # Описание ошибки / Error description
        error_desc: nil,
        # Тип мили доставки / Delivery mile type
        mile_type: nil,
        request_options: {}
      )
      end

      # Событие изменения статуса заказа / Order status change event
      sig do
        params(
          change_date: Time,
          execution_status:
            DeliveryFivePostClient::API::V1::ExecutionStatus::OrSymbol,
          order_id: String,
          sender_order_id: String,
          status: String,
          error_desc: String,
          mile_type: DeliveryFivePostClient::MileType::OrSymbol,
          request_options: DeliveryFivePostClient::RequestOptions::OrHash
        ).void
      end
      def create_order_status(
        # Дата изменения статуса / Status change date
        change_date:,
        # Статусы исполнения заказа / Order execution statuses
        execution_status:,
        # UUID в формате v4 / UUID in v4 format
        order_id:,
        # ID заказа партнера / Partner order ID
        sender_order_id:,
        # Статус заказа / Order status
        status:,
        # Описание ошибки / Error description
        error_desc: nil,
        # Тип мили доставки / Delivery mile type
        mile_type: nil,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: DeliveryFivePostClient::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
