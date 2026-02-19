# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderCreateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::OrderCreateResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Информация о созданных грузоместах / Created cargoes information
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo
              ]
            )
          end
          attr_accessor :cargoes

          # Статусы исполнения заказа / Order execution statuses
          sig do
            returns(
              DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
            )
          end
          attr_accessor :execution_status

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :order_id

          # ID заказа партнера / Partner order ID
          sig { returns(String) }
          attr_accessor :sender_order_id

          # Статус заказа / Order status
          sig { returns(String) }
          attr_accessor :status

          # Маркер дубликата заказа / Duplicate order marker
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_duplicate

          sig { params(is_duplicate: T::Boolean).void }
          attr_writer :is_duplicate

          # Ответ на создание заказа / Order creation response
          sig do
            params(
              cargoes:
                T::Array[
                  DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo::OrHash
                ],
              execution_status:
                DeliveryFivePostClient::API::V1::ExecutionStatus::OrSymbol,
              order_id: String,
              sender_order_id: String,
              status: String,
              is_duplicate: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Информация о созданных грузоместах / Created cargoes information
            cargoes:,
            # Статусы исполнения заказа / Order execution statuses
            execution_status:,
            # UUID в формате v4 / UUID in v4 format
            order_id:,
            # ID заказа партнера / Partner order ID
            sender_order_id:,
            # Статус заказа / Order status
            status:,
            # Маркер дубликата заказа / Duplicate order marker
            is_duplicate: nil
          )
          end

          sig do
            override.returns(
              {
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo
                  ],
                execution_status:
                  DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol,
                order_id: String,
                sender_order_id: String,
                status: String,
                is_duplicate: T::Boolean
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
