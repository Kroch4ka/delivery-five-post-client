# typed: strong

module DeliveryFivePostClient
  module Models
    class WebhookCreateCargoStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
      extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
      include DeliveryFivePostClient::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            DeliveryFivePostClient::WebhookCreateCargoStatusParams,
            DeliveryFivePostClient::Internal::AnyHash
          )
        end

      # UUID в формате v4 / UUID in v4 format
      sig { returns(String) }
      attr_accessor :cargo_id

      # Дата изменения статуса / Status change date
      sig { returns(Time) }
      attr_accessor :change_date

      # UUID в формате v4 / UUID in v4 format
      sig { returns(String) }
      attr_accessor :order_id

      # ID грузоместа партнера / Partner cargo ID
      sig { returns(String) }
      attr_accessor :sender_cargo_id

      # Статус грузоместа / Cargo status
      sig { returns(String) }
      attr_accessor :status

      # Описание ошибки / Error description
      sig { returns(T.nilable(String)) }
      attr_reader :error_desc

      sig { params(error_desc: String).void }
      attr_writer :error_desc

      # Тип мили доставки / Delivery mile type
      sig { returns(T.nilable(DeliveryFivePostClient::MileType::OrSymbol)) }
      attr_reader :mile_type

      sig { params(mile_type: DeliveryFivePostClient::MileType::OrSymbol).void }
      attr_writer :mile_type

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            cargo_id: String,
            change_date: Time,
            order_id: String,
            sender_cargo_id: String,
            status: String,
            error_desc: String,
            mile_type: DeliveryFivePostClient::MileType::OrSymbol,
            request_options: DeliveryFivePostClient::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
