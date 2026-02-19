# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Points
          class Sl
            # Получение сроков доставки C2C / Get C2C delivery terms
            #
            # @overload get_c2c_delivery_terms(from_location_id:, to_location_id:, request_options: {})
            #
            # @param from_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param to_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsParams
            def get_c2c_delivery_terms(params)
              parsed, options =
                DeliveryFivePostClient::API::V2::Points::SlGetC2cDeliveryTermsParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v2/points/sl/c2c",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsResponse,
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
