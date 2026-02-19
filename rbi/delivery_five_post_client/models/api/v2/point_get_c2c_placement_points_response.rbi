# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        PointGetC2cPlacementPointsResponse =
          T.let(
            DeliveryFivePostClient::Internal::Type::ArrayOf[
              DeliveryFivePostClient::API::V2::PickupPoint
            ],
            DeliveryFivePostClient::Internal::Type::Converter
          )
      end
    end
  end
end
