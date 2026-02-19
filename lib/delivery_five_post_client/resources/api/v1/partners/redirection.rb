# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Redirection
            # Переадресация заказа / Redirect order
            #
            # @overload create(new_location_id:, order_id:, request_options: {})
            #
            # @param new_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::RedirectionCreateResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::RedirectionCreateParams
            def create(params)
              parsed, options = DeliveryFivePostClient::API::V1::Partners::RedirectionCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/redirection",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V1::Partners::RedirectionCreateResponse,
                options: options
              )
            end

            # Статус переадресации / Redirection status
            #
            # @overload status(task_id:, request_options: {})
            #
            # @param task_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::TaskStatusResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::RedirectionStatusParams
            def status(params)
              parsed, options = DeliveryFivePostClient::API::V1::Partners::RedirectionStatusParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/redirection/status",
                body: parsed,
                model: DeliveryFivePostClient::API::V1::Partners::TaskStatusResponse,
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
