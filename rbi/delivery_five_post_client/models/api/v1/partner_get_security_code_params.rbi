# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetSecurityCodeParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerGetSecurityCodeParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив UUID заказов / Array of order UUIDs
          sig { returns(T::Array[String]) }
          attr_accessor :order_ids

          sig do
            params(
              order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                order_ids: T::Array[String],
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
