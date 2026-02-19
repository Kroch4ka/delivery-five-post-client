# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        class PointGetC2cPickupPointsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V2::PointGetC2cPickupPointsParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Город / City
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # UUID в формате v4 / UUID in v4 format
          sig { returns(T.nilable(String)) }
          attr_reader :from_location_id

          sig { params(from_location_id: String).void }
          attr_writer :from_location_id

          # Регион / Region
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          sig do
            params(
              city: String,
              from_location_id: String,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Город / City
            city: nil,
            # UUID в формате v4 / UUID in v4 format
            from_location_id: nil,
            # Регион / Region
            region: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                city: String,
                from_location_id: String,
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
