# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        module Points
          # @see DeliveryFivePostClient::Resources::API::V2::Points::Sl#get_c2c_delivery_terms
          class SlGetC2cDeliveryTermsParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute from_location_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :from_location_id, String, api_name: :fromLocationId

            # @!attribute to_location_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :to_location_id, String, api_name: :toLocationId

            # @!method initialize(from_location_id:, to_location_id:, request_options: {})
            #   @param from_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param to_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
