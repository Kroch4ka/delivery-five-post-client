# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Статус поставки / Supply status
          module SupplyStatus
            extend DeliveryFivePostClient::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :CREATED,
                DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :IN_PROGRESS,
                DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :COMPLETED,
                DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :CANCELLED,
                DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
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
