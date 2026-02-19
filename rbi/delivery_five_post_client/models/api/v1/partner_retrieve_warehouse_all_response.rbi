# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerRetrieveWarehouseAllResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив складов / Array of warehouses
          sig do
            returns(
              T::Array[DeliveryFivePostClient::API::V1::Partners::WarehouseInfo]
            )
          end
          attr_accessor :warehouses

          # Список складов / Warehouse list
          sig do
            params(
              warehouses:
                T::Array[
                  DeliveryFivePostClient::API::V1::Partners::WarehouseInfo::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив складов / Array of warehouses
            warehouses:
          )
          end

          sig do
            override.returns(
              {
                warehouses:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::WarehouseInfo
                  ]
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
