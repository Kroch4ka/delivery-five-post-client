# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Jwt
            # Получение Bearer токена / Get Bearer token
            #
            # @overload generate(apikey:, request_options: {})
            #
            # @param apikey [String] API ключ партнера / Partner API key
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::JwtGenerateResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::JwtGenerateParams
            def generate(params)
              parsed, options = DeliveryFivePostClient::API::V1::Partners::JwtGenerateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/jwt/generate",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V1::Partners::JwtGenerateResponse,
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
