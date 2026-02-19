# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    # @see DeliveryFivePostClient::Resources::Webhooks#create_cargo_status
    class WebhookCreateCargoStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
      extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
      include DeliveryFivePostClient::Internal::Type::RequestParameters

      # @!attribute cargo_id
      #   UUID в формате v4 / UUID in v4 format
      #
      #   @return [String]
      required :cargo_id, String, api_name: :cargoId

      # @!attribute change_date
      #   Дата изменения статуса / Status change date
      #
      #   @return [Time]
      required :change_date, Time, api_name: :changeDate

      # @!attribute order_id
      #   UUID в формате v4 / UUID in v4 format
      #
      #   @return [String]
      required :order_id, String, api_name: :orderId

      # @!attribute sender_cargo_id
      #   ID грузоместа партнера / Partner cargo ID
      #
      #   @return [String]
      required :sender_cargo_id, String, api_name: :senderCargoId

      # @!attribute status
      #   Статус грузоместа / Cargo status
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

      # @!method initialize(cargo_id:, change_date:, order_id:, sender_cargo_id:, status:, error_desc: nil, mile_type: nil, request_options: {})
      #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
      #
      #   @param change_date [Time] Дата изменения статуса / Status change date
      #
      #   @param order_id [String] UUID в формате v4 / UUID in v4 format
      #
      #   @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
      #
      #   @param status [String] Статус грузоместа / Cargo status
      #
      #   @param error_desc [String] Описание ошибки / Error description
      #
      #   @param mile_type [Symbol, DeliveryFivePostClient::Models::MileType] Тип мили доставки / Delivery mile type
      #
      #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
