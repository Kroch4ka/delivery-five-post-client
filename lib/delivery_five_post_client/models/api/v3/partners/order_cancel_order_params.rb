# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V3
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V3::Partners::Orders#cancel_order
          class OrderCancelOrderParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String

            # @!method initialize(order_id:, request_options: {})
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
