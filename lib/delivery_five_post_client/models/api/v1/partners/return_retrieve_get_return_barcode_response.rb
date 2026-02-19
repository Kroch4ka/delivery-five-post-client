# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Return#retrieve_get_return_barcode
          class ReturnRetrieveGetReturnBarcodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute barcode
            #   Штрих-код / Barcode
            #
            #   @return [String]
            required :barcode, String

            # @!method initialize(barcode:)
            #   Штрих-код возврата / Return barcode
            #
            #   @param barcode [String] Штрих-код / Barcode
          end
        end
      end
    end
  end
end
