# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # Статусы исполнения заказа / Order execution statuses
        module ExecutionStatus
          extend DeliveryFivePostClient::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, DeliveryFivePostClient::API::V1::ExecutionStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :CREATED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :RECEIVED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          RECEIVED_IN_DROP =
            T.let(
              :RECEIVED_IN_DROP,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          RECEIVED_IN_STORE =
            T.let(
              :RECEIVED_IN_STORE,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          RECEIVED_IN_TRANSIT_WAREHOUSE =
            T.let(
              :RECEIVED_IN_TRANSIT_WAREHOUSE,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          SHIPPED =
            T.let(
              :SHIPPED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          IN_TRANSIT =
            T.let(
              :IN_TRANSIT,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          READY_TO_RECEIVE =
            T.let(
              :READY_TO_RECEIVE,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :DELIVERED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :CANCELLED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          LOST =
            T.let(
              :LOST,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          UNCLAIMED =
            T.let(
              :UNCLAIMED,
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
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
