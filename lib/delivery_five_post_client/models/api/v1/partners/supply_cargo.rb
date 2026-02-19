# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class SupplyCargo < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute barcode
            #   Штрих-код грузоместа / Cargo barcode
            #
            #   @return [String]
            required :barcode, String

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!method initialize(barcode:, order_id:)
            #   Грузоместо в поставке / Cargo in supply
            #
            #   @param barcode [String] Штрих-код грузоместа / Cargo barcode
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
