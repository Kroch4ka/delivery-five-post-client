# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#delivery_params
        class PartnerDeliveryParamsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute city
          #   Город / City
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute region
          #   Регион / Region
          #
          #   @return [String, nil]
          optional :region, String

          # @!method initialize(city: nil, region: nil, request_options: {})
          #   @param city [String] Город / City
          #
          #   @param region [String] Регион / Region
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
