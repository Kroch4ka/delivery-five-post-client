# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class JwtGenerateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::JwtGenerateParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # API ключ партнера / Partner API key
            sig { returns(String) }
            attr_accessor :apikey

            sig do
              params(
                apikey: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # API ключ партнера / Partner API key
              apikey:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  apikey: String,
                  request_options: DeliveryFivePostClient::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
