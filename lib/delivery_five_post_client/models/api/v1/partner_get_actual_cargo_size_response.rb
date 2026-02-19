# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_actual_cargo_size
        class PartnerGetActualCargoSizeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute actual_height
          #   Фактическая высота / Actual height
          #
          #   @return [Float]
          required :actual_height, Float, api_name: :actualHeight

          # @!attribute actual_length
          #   Фактическая длина / Actual length
          #
          #   @return [Float]
          required :actual_length, Float, api_name: :actualLength

          # @!attribute actual_weight
          #   Фактический вес после измерения / Actual weight after measurement
          #
          #   @return [Float]
          required :actual_weight, Float, api_name: :actualWeight

          # @!attribute actual_width
          #   Фактическая ширина / Actual width
          #
          #   @return [Float]
          required :actual_width, Float, api_name: :actualWidth

          # @!attribute cargo_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :cargo_id, String, api_name: :cargoId

          # @!method initialize(actual_height:, actual_length:, actual_weight:, actual_width:, cargo_id:)
          #   Ответ с актуальными ВГХ грузоместа / Actual cargo size response
          #
          #   @param actual_height [Float] Фактическая высота / Actual height
          #
          #   @param actual_length [Float] Фактическая длина / Actual length
          #
          #   @param actual_weight [Float] Фактический вес после измерения / Actual weight after measurement
          #
          #   @param actual_width [Float] Фактическая ширина / Actual width
          #
          #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
        end
      end
    end
  end
end
