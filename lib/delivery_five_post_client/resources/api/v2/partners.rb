# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Partners
          # Создание возвратного заказа. senderOrderId формируется как RT + barcode / Create
          # return order. senderOrderId format: RT + barcode
          #
          # @overload create_return_order(base_order:, cargoes:, return_location_id:, warehouse:, request_options: {})
          #
          # @param base_order [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::BaseOrder] Базовый заказ для возврата / Base order for return
          #
          # @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа для возврата / Return cargoes
          #
          # @param return_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param warehouse [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams::Warehouse] Склад возврата / Return warehouse
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderParams
          def create_return_order(params)
            parsed, options = DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v2/partners/return",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [DeliveryFivePostClient::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
