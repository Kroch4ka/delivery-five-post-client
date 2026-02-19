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

            # @!method initialize(request_options: {})
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
