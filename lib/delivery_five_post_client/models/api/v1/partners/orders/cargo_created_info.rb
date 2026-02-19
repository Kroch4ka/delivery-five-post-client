# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo#create
            class CargoCreatedInfo < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute barcode
              #   Штрих-код грузоместа / Cargo barcode
              #
              #   @return [String]
              required :barcode, String

              # @!attribute cargo_id
              #   UUID в формате v4 / UUID in v4 format
              #
              #   @return [String]
              required :cargo_id, String, api_name: :cargoId

              # @!attribute sender_cargo_id
              #   ID грузоместа партнера / Partner cargo ID
              #
              #   @return [String]
              required :sender_cargo_id, String, api_name: :senderCargoId

              # @!method initialize(barcode:, cargo_id:, sender_cargo_id:)
              #   Информация о созданном грузоместе / Created cargo information
              #
              #   @param barcode [String] Штрих-код грузоместа / Cargo barcode
              #
              #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
              #
              #   @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
            end
          end
        end
      end
    end
  end
end
