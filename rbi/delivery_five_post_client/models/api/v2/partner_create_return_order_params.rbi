# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        class PartnerCreateReturnOrderParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Базовый заказ для возврата / Base order for return
          sig do
            returns(
              DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder
            )
          end
          attr_reader :base_order

          sig do
            params(
              base_order:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder::OrHash
            ).void
          end
          attr_writer :base_order

          # Грузоместа для возврата / Return cargoes
          sig { returns(T::Array[DeliveryFivePostClient::API::V1::Cargo]) }
          attr_accessor :cargoes

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :return_location_id

          # Склад возврата / Return warehouse
          sig do
            returns(
              DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse
            )
          end
          attr_reader :warehouse

          sig do
            params(
              warehouse:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse::OrHash
            ).void
          end
          attr_writer :warehouse

          sig do
            params(
              base_order:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder::OrHash,
              cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
              return_location_id: String,
              warehouse:
                DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse::OrHash,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Базовый заказ для возврата / Base order for return
            base_order:,
            # Грузоместа для возврата / Return cargoes
            cargoes:,
            # UUID в формате v4 / UUID in v4 format
            return_location_id:,
            # Склад возврата / Return warehouse
            warehouse:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                base_order:
                  DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder,
                cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo],
                return_location_id: String,
                warehouse:
                  DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse,
                request_options: DeliveryFivePostClient::RequestOptions
              }
            )
          end
          def to_hash
          end

          class BaseOrder < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::BaseOrder,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(T.nilable(String)) }
            attr_reader :order_id

            sig { params(order_id: String).void }
            attr_writer :order_id

            # ID заказа отправителя / Sender order ID
            sig { returns(T.nilable(String)) }
            attr_reader :sender_order_id

            sig { params(sender_order_id: String).void }
            attr_writer :sender_order_id

            # Базовый заказ для возврата / Base order for return
            sig do
              params(order_id: String, sender_order_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              order_id: nil,
              # ID заказа отправителя / Sender order ID
              sender_order_id: nil
            )
            end

            sig do
              override.returns({ order_id: String, sender_order_id: String })
            end
            def to_hash
            end
          end

          class Warehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V2::PartnerCreateReturnOrderParams::Warehouse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :id

            # Склад возврата / Return warehouse
            sig { params(id: String).returns(T.attached_class) }
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              id:
            )
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
