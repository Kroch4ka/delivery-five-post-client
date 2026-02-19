# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Jwt#generate
          class JwtGenerateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute token
            #   Bearer токен для авторизации / Bearer token for authorization
            #
            #   @return [String]
            required :token, String

            # @!attribute expires_in
            #   Время жизни токена в секундах / Token expiration time in seconds
            #
            #   @return [Integer]
            required :expires_in, Integer, api_name: :expiresIn

            # @!method initialize(token:, expires_in:)
            #   Ответ с JWT токеном / JWT token response
            #
            #   @param token [String] Bearer токен для авторизации / Bearer token for authorization
            #
            #   @param expires_in [Integer] Время жизни токена в секундах / Token expiration time in seconds
          end
        end
      end
    end
  end
end
