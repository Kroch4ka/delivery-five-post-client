# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetOrderHistoryMassResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив историй заказов / Array of order histories
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order
              ]
            )
          end
          attr_accessor :orders

          # Ответ с историей статусов заказов / Order history response
          sig do
            params(
              orders:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив историй заказов / Array of order histories
            orders:
          )
          end

          sig do
            override.returns(
              {
                orders:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order
                  ]
              }
            )
          end
          def to_hash
          end

          class Order < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # История изменений статусов / Status change history
            sig do
              returns(
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History
                ]
              )
            end
            attr_accessor :history

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # ID заказа партнера / Partner order ID
            sig { returns(String) }
            attr_accessor :sender_order_id

            # История статусов одного заказа / Single order status history
            sig do
              params(
                history:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History::OrHash
                  ],
                order_id: String,
                sender_order_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # История изменений статусов / Status change history
              history:,
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              # ID заказа партнера / Partner order ID
              sender_order_id:
            )
            end

            sig do
              override.returns(
                {
                  history:
                    T::Array[
                      DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History
                    ],
                  order_id: String,
                  sender_order_id: String
                }
              )
            end
            def to_hash
            end

            class History < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order::History,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Дата изменения / Change date
              sig { returns(Time) }
              attr_accessor :change_date

              # Статусы исполнения заказа / Order execution statuses
              sig do
                returns(
                  DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol
                )
              end
              attr_accessor :execution_status

              # Статус заказа / Order status
              sig { returns(String) }
              attr_accessor :status

              # Описание ошибки / Error description
              sig { returns(T.nilable(String)) }
              attr_reader :error_desc

              sig { params(error_desc: String).void }
              attr_writer :error_desc

              # Тип мили доставки / Delivery mile type
              sig do
                returns(
                  T.nilable(DeliveryFivePostClient::MileType::TaggedSymbol)
                )
              end
              attr_reader :mile_type

              sig do
                params(
                  mile_type: DeliveryFivePostClient::MileType::OrSymbol
                ).void
              end
              attr_writer :mile_type

              # Запись в истории статусов / Status history entry
              sig do
                params(
                  change_date: Time,
                  execution_status:
                    DeliveryFivePostClient::API::V1::ExecutionStatus::OrSymbol,
                  status: String,
                  error_desc: String,
                  mile_type: DeliveryFivePostClient::MileType::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Дата изменения / Change date
                change_date:,
                # Статусы исполнения заказа / Order execution statuses
                execution_status:,
                # Статус заказа / Order status
                status:,
                # Описание ошибки / Error description
                error_desc: nil,
                # Тип мили доставки / Delivery mile type
                mile_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    change_date: Time,
                    execution_status:
                      DeliveryFivePostClient::API::V1::ExecutionStatus::TaggedSymbol,
                    status: String,
                    error_desc: String,
                    mile_type: DeliveryFivePostClient::MileType::TaggedSymbol
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
end
