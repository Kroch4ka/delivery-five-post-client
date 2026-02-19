# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class PartnerSupplyRetrievePartnerSupplyResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Поставки / Supplies
            sig do
              returns(
                T::Array[DeliveryFivePostClient::API::V1::Partners::SupplyInfo]
              )
            end
            attr_accessor :supplies

            # Общее количество / Total count
            sig { returns(Integer) }
            attr_accessor :total_count

            # Список поставок / Supplies list
            sig do
              params(
                supplies:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyInfo::OrHash
                  ],
                total_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Поставки / Supplies
              supplies:,
              # Общее количество / Total count
              total_count:
            )
            end

            sig do
              override.returns(
                {
                  supplies:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::SupplyInfo
                    ],
                  total_count: Integer
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
