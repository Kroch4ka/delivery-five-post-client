# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        # @type [DeliveryFivePostClient::Internal::Type::Converter]
        PointGetC2cPickupPointsResponse =
          DeliveryFivePostClient::Internal::Type::ArrayOf[-> { DeliveryFivePostClient::API::V2::PickupPoint }]
      end
    end
  end
end
