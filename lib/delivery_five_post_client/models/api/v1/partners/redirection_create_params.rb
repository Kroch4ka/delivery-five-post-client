# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Redirection#create
          class RedirectionCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute new_location_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :new_location_id, String, api_name: :newLocationId

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!method initialize(new_location_id:, order_id:, request_options: {})
            #   @param new_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
