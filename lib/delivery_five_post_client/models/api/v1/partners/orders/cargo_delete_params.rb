# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo#delete
            class CargoDeleteParams < DeliveryFivePostClient::Internal::Type::BaseModel
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
end
