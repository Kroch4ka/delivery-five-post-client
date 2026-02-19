# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_receiver_locations
        class PartnerGetReceiverLocationsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute order_ids
          #   Массив UUID заказов / Array of order UUIDs
          #
          #   @return [Array<String>]
          required :order_ids, DeliveryFivePostClient::Internal::Type::ArrayOf[String], api_name: :orderIds

          # @!method initialize(order_ids:, request_options: {})
          #   @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
