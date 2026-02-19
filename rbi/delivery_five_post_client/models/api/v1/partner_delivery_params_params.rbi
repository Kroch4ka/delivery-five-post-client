# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerDeliveryParamsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerDeliveryParamsParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Город / City
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Регион / Region
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          sig do
            params(
              city: String,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Город / City
            city: nil,
            # Регион / Region
            region: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                city: String,
                region: String,
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
