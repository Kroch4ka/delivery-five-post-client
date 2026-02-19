# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::GetLabelStatuses#by_sender_order_ids
        class GetLabelStatusBySenderOrderIDsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute sender_order_ids
          #   Массив ID заказов партнера / Array of partner order IDs
          #
          #   @return [Array<String>]
          required :sender_order_ids,
                   DeliveryFivePostClient::Internal::Type::ArrayOf[String],
                   api_name: :senderOrderIds

          # @!method initialize(sender_order_ids:, request_options: {})
          #   @param sender_order_ids [Array<String>] Массив ID заказов партнера / Array of partner order IDs
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
