# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Статус задачи / Task status
          module TaskStatus
            extend DeliveryFivePostClient::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  DeliveryFivePostClient::API::V1::Partners::TaskStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PROCESSING =
              T.let(
                :PROCESSING,
                DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :COMPLETED,
                DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol
              )
            ERROR =
              T.let(
                :ERROR,
                DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol
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
