# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Tariff#c2c
        class TariffC2cParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute assessed_value
          #   Оценочная стоимость / Assessed value
          #
          #   @return [Float]
          required :assessed_value, Float, api_name: :assessedValue

          # @!attribute from_location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :from_location_id, String, api_name: :fromLocationId

          # @!attribute height
          #   Высота (см) / Height
          #
          #   @return [Float]
          required :height, Float

          # @!attribute length
          #   Длина (см) / Length
          #
          #   @return [Float]
          required :length, Float

          # @!attribute to_location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :to_location_id, String, api_name: :toLocationId

          # @!attribute weight
          #   Вес грузоместа (кг) / Weight
          #
          #   @return [Float]
          required :weight, Float

          # @!attribute width
          #   Ширина (см) / Width
          #
          #   @return [Float]
          required :width, Float

          # @!method initialize(assessed_value:, from_location_id:, height:, length:, to_location_id:, weight:, width:, request_options: {})
          #   @param assessed_value [Float] Оценочная стоимость / Assessed value
          #
          #   @param from_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param height [Float] Высота (см) / Height
          #
          #   @param length [Float] Длина (см) / Length
          #
          #   @param to_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param weight [Float] Вес грузоместа (кг) / Weight
          #
          #   @param width [Float] Ширина (см) / Width
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
