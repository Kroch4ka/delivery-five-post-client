# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        class PartnerCreateReturnOrderResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Информация о грузоместах / Cargoes info
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo
              ]
            )
          end
          attr_accessor :cargoes

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :order_id

          # ID заказа отправителя (RT + barcode) / Sender order ID
          sig { returns(String) }
          attr_accessor :sender_order_id

          # Ответ создания возврата / Return creation response
          sig do
            params(
              cargoes:
                T::Array[
                  DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo::OrHash
                ],
              order_id: String,
              sender_order_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Информация о грузоместах / Cargoes info
            cargoes:,
            # UUID в формате v4 / UUID in v4 format
            order_id:,
            # ID заказа отправителя (RT + barcode) / Sender order ID
            sender_order_id:
          )
          end

          sig do
            override.returns(
              {
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo
                  ],
                order_id: String,
                sender_order_id: String
              }
            )
          end
          def to_hash
          end

          class Cargo < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Штрих-код / Barcode
            sig { returns(String) }
            attr_accessor :barcode

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :cargo_id

            sig do
              params(barcode: String, cargo_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Штрих-код / Barcode
              barcode:,
              # UUID в формате v4 / UUID in v4 format
              cargo_id:
            )
            end

            sig { override.returns({ barcode: String, cargo_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
