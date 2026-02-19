# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#pickup_points
        class PartnerPickupPointsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute pickup_points
          #   Массив точек выдачи / Array of pickup points
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V2::PickupPoint>]
          required :pickup_points,
                   -> {
                     DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint]
                   },
                   api_name: :pickupPoints

          # @!method initialize(pickup_points:)
          #   Ответ со списком точек выдачи / Pickup points response
          #
          #   @param pickup_points [Array<DeliveryFivePostClient::Models::API::V2::PickupPoint>] Массив точек выдачи / Array of pickup points
        end
      end
    end
  end
end
