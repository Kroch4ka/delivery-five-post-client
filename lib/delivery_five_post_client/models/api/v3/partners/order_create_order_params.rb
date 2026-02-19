# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V3
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V3::Partners::Orders#create_order
          class OrderCreateOrderParams < DeliveryFivePostClient::Models::API::V1::OrderCreate
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
