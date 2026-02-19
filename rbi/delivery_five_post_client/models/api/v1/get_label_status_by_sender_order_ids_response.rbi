# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class GetLabelStatusBySenderOrderIDsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив статусов этикеток / Array of label statuses
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus
              ]
            )
          end
          attr_accessor :label_statuses

          # Ответ со статусами этикеток / Label statuses response
          sig do
            params(
              label_statuses:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив статусов этикеток / Array of label statuses
            label_statuses:
          )
          end

          sig do
            override.returns(
              {
                label_statuses:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus
                  ]
              }
            )
          end
          def to_hash
          end

          class LabelStatus < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # ID заказа партнера / Partner order ID
            sig { returns(String) }
            attr_accessor :sender_order_id

            # Статус этикетки / Label status
            sig do
              returns(
                DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Информация о статусе этикетки / Label status information
            sig do
              params(
                order_id: String,
                sender_order_id: String,
                status:
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              # ID заказа партнера / Partner order ID
              sender_order_id:,
              # Статус этикетки / Label status
              status:
            )
            end

            sig do
              override.returns(
                {
                  order_id: String,
                  sender_order_id: String,
                  status:
                    DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Статус этикетки / Label status
            module Status
              extend DeliveryFivePostClient::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NEW =
                T.let(
                  :NEW,
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
                )
              READY =
                T.let(
                  :READY,
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
                )
              ERROR =
                T.let(
                  :ERROR,
                  DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status::TaggedSymbol
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
end
