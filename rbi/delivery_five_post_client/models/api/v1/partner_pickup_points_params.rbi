# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerPickupPointsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerPickupPointsParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Фильтр по активности / Filter by active status
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :active

          sig { params(active: T::Boolean).void }
          attr_writer :active

          # Фильтр по городу / Filter by city
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Поиск по MDM коду / Search by MDM code
          sig { returns(T.nilable(String)) }
          attr_reader :mdm_code

          sig { params(mdm_code: String).void }
          attr_writer :mdm_code

          # Фильтр по готовности / Filter by ready status
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :ready

          sig { params(ready: T::Boolean).void }
          attr_writer :ready

          # Фильтр по региону / Filter by region
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          sig do
            params(
              active: T::Boolean,
              city: String,
              mdm_code: String,
              ready: T::Boolean,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Фильтр по активности / Filter by active status
            active: nil,
            # Фильтр по городу / Filter by city
            city: nil,
            # Поиск по MDM коду / Search by MDM code
            mdm_code: nil,
            # Фильтр по готовности / Filter by ready status
            ready: nil,
            # Фильтр по региону / Filter by region
            region: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                active: T::Boolean,
                city: String,
                mdm_code: String,
                ready: T::Boolean,
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
