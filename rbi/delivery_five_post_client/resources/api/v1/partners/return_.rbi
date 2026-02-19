# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Return
            # Получение кода размещения (закладки) для возвратного заказа / Get placement code
            # for return order
            sig do
              params(
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeResponse
              )
            end
            def retrieve_get_placement_code(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            # Получение штрих-кода возвратного заказа / Get return order barcode
            sig do
              params(
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeResponse
              )
            end
            def retrieve_get_return_barcode(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            # @api private
            sig do
              params(client: DeliveryFivePostClient::Client).returns(
                T.attached_class
              )
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
