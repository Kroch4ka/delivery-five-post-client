# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Return
            # Получение кода размещения (закладки) для возвратного заказа / Get placement code
            # for return order
            #
            # @overload retrieve_get_placement_code(order_id:, request_options: {})
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeParams
            def retrieve_get_placement_code(params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::ReturnRetrieveGetPlacementCodeParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/v1/partners/return/getPlacementCode",
                query: parsed.transform_keys(order_id: "orderId"),
                model: DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeResponse,
                options: options
              )
            end

            # Получение штрих-кода возвратного заказа / Get return order barcode
            #
            # @overload retrieve_get_return_barcode(order_id:, request_options: {})
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeParams
            def retrieve_get_return_barcode(params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::ReturnRetrieveGetReturnBarcodeParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/v1/partners/return/getReturnBarcode",
                query: parsed.transform_keys(order_id: "orderId"),
                model: DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeResponse,
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
end
