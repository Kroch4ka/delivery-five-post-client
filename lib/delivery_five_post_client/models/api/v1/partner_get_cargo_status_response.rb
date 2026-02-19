# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_cargo_status
        class PartnerGetCargoStatusResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute cargoes
          #   Массив статусов грузомест / Array of cargo statuses
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo>]
          required :cargoes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo] }

          # @!method initialize(cargoes:)
          #   Ответ со статусами грузомест / Cargo status response
          #
          #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo>] Массив статусов грузомест / Array of cargo statuses

          class Cargo < DeliveryFivePostClient::Internal::Type::BaseModel
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

            # @!method initialize(cargo_id:, change_date:, sender_cargo_id:, status:, error_desc: nil, mile_type: nil)
            #   Статус грузоместа / Cargo status
            #
            #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param change_date [Time] Дата изменения статуса / Status change date
            #
            #   @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
            #
            #   @param status [String] Статус грузоместа / Cargo status
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
