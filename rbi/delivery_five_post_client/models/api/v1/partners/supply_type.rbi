# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Тип поставки / Supply type
          module SupplyType
            extend DeliveryFivePostClient::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  DeliveryFivePostClient::API::V1::Partners::SupplyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLANNED =
              T.let(
                :PLANNED,
                DeliveryFivePostClient::API::V1::Partners::SupplyType::TaggedSymbol
              )
            UNPLANNED =
              T.let(
                :UNPLANNED,
                DeliveryFivePostClient::API::V1::Partners::SupplyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  DeliveryFivePostClient::API::V1::Partners::SupplyType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
