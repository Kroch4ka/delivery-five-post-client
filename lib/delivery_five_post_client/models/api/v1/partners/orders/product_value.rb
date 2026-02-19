# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class ProductValue < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute currency
              #   Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
              #   RUB is supported)
              #
              #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Currency]
              required :currency, enum: -> { DeliveryFivePostClient::API::V1::Currency }

              # @!attribute name
              #   Название товара / Product name
              #
              #   @return [String]
              required :name, String

              # @!attribute price
              #   Цена за единицу товара / Unit price
              #
              #   @return [Float]
              required :price, Float

              # @!attribute quantity
              #   Количество единиц товара / Quantity
              #
              #   @return [Integer]
              required :quantity, Integer

              # @!attribute barcode
              #   Штрих-код товара / Product barcode
              #
              #   @return [String, nil]
              optional :barcode, String

              # @!attribute uin_code
              #   УИН для ювелирных изделий / UIN for jewelry
              #
              #   @return [String, nil]
              optional :uin_code, String, api_name: :uinCode

              # @!attribute upi_code
              #   Код маркировки товара / Product marking code
              #
              #   @return [String, nil]
              optional :upi_code, String, api_name: :upiCode

              # @!attribute vat
              #   Ставка НДС (%) / VAT rate (%)
              #
              #   @return [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate, nil]
              optional :vat, enum: -> { DeliveryFivePostClient::API::V1::Partners::Orders::VatRate }

              # @!attribute vendor_code
              #   Артикул товара / Vendor code
              #
              #   @return [String, nil]
              optional :vendor_code, String, api_name: :vendorCode

              # @!method initialize(currency:, name:, price:, quantity:, barcode: nil, uin_code: nil, upi_code: nil, vat: nil, vendor_code: nil)
              #   Some parameter documentations has been truncated, see
              #   {DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue} for
              #   more details.
              #
              #   Товарная позиция / Product value
              #
              #   @param currency [Symbol, DeliveryFivePostClient::Models::API::V1::Currency] Валюта (в текущей версии поддерживается только RUB) / Currency (currently only R
              #
              #   @param name [String] Название товара / Product name
              #
              #   @param price [Float] Цена за единицу товара / Unit price
              #
              #   @param quantity [Integer] Количество единиц товара / Quantity
              #
              #   @param barcode [String] Штрих-код товара / Product barcode
              #
              #   @param uin_code [String] УИН для ювелирных изделий / UIN for jewelry
              #
              #   @param upi_code [String] Код маркировки товара / Product marking code
              #
              #   @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Ставка НДС (%) / VAT rate (%)
              #
              #   @param vendor_code [String] Артикул товара / Vendor code
            end
          end
        end
      end
    end
  end
end
