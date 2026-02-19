# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerPickupPointsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив точек выдачи / Array of pickup points
          sig do
            returns(T::Array[DeliveryFivePostClient::API::V2::PickupPoint])
          end
          attr_accessor :pickup_points

          # Ответ со списком точек выдачи / Pickup points response
          sig do
            params(
              pickup_points:
                T::Array[DeliveryFivePostClient::API::V2::PickupPoint::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив точек выдачи / Array of pickup points
            pickup_points:
          )
          end

          sig do
            override.returns(
              {
                pickup_points:
                  T::Array[DeliveryFivePostClient::API::V2::PickupPoint]
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
