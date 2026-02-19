# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class JwtGenerateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::JwtGenerateResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Bearer токен для авторизации / Bearer token for authorization
            sig { returns(String) }
            attr_accessor :token

            # Время жизни токена в секундах / Token expiration time in seconds
            sig { returns(Integer) }
            attr_accessor :expires_in

            # Ответ с JWT токеном / JWT token response
            sig do
              params(token: String, expires_in: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # Bearer токен для авторизации / Bearer token for authorization
              token:,
              # Время жизни токена в секундах / Token expiration time in seconds
              expires_in:
            )
            end

            sig { override.returns({ token: String, expires_in: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
