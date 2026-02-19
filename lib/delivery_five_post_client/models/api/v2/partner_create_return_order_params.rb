# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        # @see DeliveryFivePostClient::Resources::API::V2::Partners#create_return_order
        class PartnerCreateReturnOrderParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute base_order
          #   Базовый заказ для возврата / Base order for return
          #
          #   @return [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::BaseOrder]
          required :base_order,
                   -> { DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder },
                   api_name: :baseOrder

          # @!attribute cargoes
          #   Грузоместа для возврата / Return cargoes
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::Cargo>]
          required :cargoes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Cargo] }

          # @!attribute return_location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :return_location_id, String, api_name: :returnLocationId

          # @!attribute warehouse
          #   Склад возврата / Return warehouse
          #
          #   @return [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::Warehouse]
          required :warehouse, -> { DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse }

          # @!method initialize(base_order:, cargoes:, return_location_id:, warehouse:, request_options: {})
          #   @param base_order [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::BaseOrder] Базовый заказ для возврата / Base order for return
          #
          #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа для возврата / Return cargoes
          #
          #   @param return_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param warehouse [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::Warehouse] Склад возврата / Return warehouse
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]

          class BaseOrder < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String, nil]
            optional :order_id, String, api_name: :orderId

            # @!attribute sender_order_id
            #   ID заказа отправителя / Sender order ID
            #
            #   @return [String, nil]
            optional :sender_order_id, String, api_name: :senderOrderId

            # @!method initialize(order_id: nil, sender_order_id: nil)
            #   Базовый заказ для возврата / Base order for return
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param sender_order_id [String] ID заказа отправителя / Sender order ID
          end

          class Warehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   Склад возврата / Return warehouse
            #
            #   @param id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
