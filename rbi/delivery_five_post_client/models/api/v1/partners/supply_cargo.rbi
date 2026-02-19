# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class SupplyCargo < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::SupplyCargo,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Штрих-код грузоместа / Cargo barcode
            sig { returns(String) }
            attr_accessor :barcode

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # Грузоместо в поставке / Cargo in supply
            sig do
              params(barcode: String, order_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Штрих-код грузоместа / Cargo barcode
              barcode:,
              # UUID в формате v4 / UUID in v4 format
              order_id:
            )
            end

            sig { override.returns({ barcode: String, order_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
