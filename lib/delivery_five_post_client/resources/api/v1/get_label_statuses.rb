# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class GetLabelStatuses
          # Проверка статуса этикетки / Check label status
          #
          # @overload by_sender_order_ids(sender_order_ids:, request_options: {})
          #
          # @param sender_order_ids [Array<String>] Массив ID заказов партнера / Array of partner order IDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsParams
          def by_sender_order_ids(params)
            parsed, options =
              DeliveryFivePostClient::API::V1::GetLabelStatusBySenderOrderIDsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/getLabelStatuses/bySenderOrderIds",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse,
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
