# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class ReturnRetrieveGetReturnBarcodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Штрих-код / Barcode
            sig { returns(String) }
            attr_accessor :barcode

            # Штрих-код возврата / Return barcode
            sig { params(barcode: String).returns(T.attached_class) }
            def self.new(
              # Штрих-код / Barcode
              barcode:
            )
            end

            sig { override.returns({ barcode: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
