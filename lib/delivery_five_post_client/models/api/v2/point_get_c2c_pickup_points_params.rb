# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        # @see DeliveryFivePostClient::Resources::API::V2::Points#get_c2c_pickup_points
        class PointGetC2cPickupPointsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute city
          #   Город / City
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute from_location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String, nil]
          optional :from_location_id, String, api_name: :fromLocationId

          # @!attribute region
          #   Регион / Region
          #
          #   @return [String, nil]
          optional :region, String

          # @!method initialize(city: nil, from_location_id: nil, region: nil, request_options: {})
          #   @param city [String] Город / City
          #
          #   @param from_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param region [String] Регион / Region
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
