# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#delivery_to_address
        class PartnerDeliveryToAddressParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute delivery_address
          #   Адрес / Address
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::Address]
          required :delivery_address,
                   -> {
                     DeliveryFivePostClient::API::V1::Address
                   },
                   api_name: :deliveryAddress

          # @!attribute dimensions
          #   Габариты / Dimensions
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressParams::Dimensions]
          required :dimensions, -> { DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions }

          # @!attribute sender_location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :sender_location_id, String, api_name: :senderLocationId

          # @!attribute weight
          #   Вес грузоместа (кг) / Weight
          #
          #   @return [Float]
          required :weight, Float

          # @!method initialize(delivery_address:, dimensions:, sender_location_id:, weight:, request_options: {})
          #   @param delivery_address [DeliveryFivePostClient::Models::API::V1::Address] Адрес / Address
          #
          #   @param dimensions [DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressParams::Dimensions] Габариты / Dimensions
          #
          #   @param sender_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param weight [Float] Вес грузоместа (кг) / Weight
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]

          class Dimensions < DeliveryFivePostClient::Internal::Type::BaseModel
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

            # @!attribute width
            #   Ширина (см) / Width
            #
            #   @return [Float]
            required :width, Float

            # @!method initialize(height:, length:, width:)
            #   Габариты / Dimensions
            #
            #   @param height [Float] Высота (см) / Height
            #
            #   @param length [Float] Длина (см) / Length
            #
            #   @param width [Float] Ширина (см) / Width
          end
        end
      end
    end
  end
end
