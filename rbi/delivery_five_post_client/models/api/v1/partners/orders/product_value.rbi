# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class ProductValue < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
              # RUB is supported)
              sig do
                returns(DeliveryFivePostClient::API::V1::Currency::OrSymbol)
              end
              attr_accessor :currency

              # Название товара / Product name
              sig { returns(String) }
              attr_accessor :name

              # Цена за единицу товара / Unit price
              sig { returns(Float) }
              attr_accessor :price

              # Количество единиц товара / Quantity
              sig { returns(Integer) }
              attr_accessor :quantity

              # Штрих-код товара / Product barcode
              sig { returns(T.nilable(String)) }
              attr_reader :barcode

              sig { params(barcode: String).void }
              attr_writer :barcode

              # УИН для ювелирных изделий / UIN for jewelry
              sig { returns(T.nilable(String)) }
              attr_reader :uin_code

              sig { params(uin_code: String).void }
              attr_writer :uin_code

              # Код маркировки товара / Product marking code
              sig { returns(T.nilable(String)) }
              attr_reader :upi_code

              sig { params(upi_code: String).void }
              attr_writer :upi_code

              # Ставка НДС (%) / VAT rate (%)
              sig do
                returns(
                  T.nilable(
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat
                  )
                )
              end
              attr_reader :vat

              sig do
                params(
                  vat:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat
                ).void
              end
              attr_writer :vat

              # Артикул товара / Vendor code
              sig { returns(T.nilable(String)) }
              attr_reader :vendor_code

              sig { params(vendor_code: String).void }
              attr_writer :vendor_code

              # Товарная позиция / Product value
              sig do
                params(
                  currency: DeliveryFivePostClient::API::V1::Currency::OrSymbol,
                  name: String,
                  price: Float,
                  quantity: Integer,
                  barcode: String,
                  uin_code: String,
                  upi_code: String,
                  vat:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                  vendor_code: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
                # RUB is supported)
                currency:,
                # Название товара / Product name
                name:,
                # Цена за единицу товара / Unit price
                price:,
                # Количество единиц товара / Quantity
                quantity:,
                # Штрих-код товара / Product barcode
                barcode: nil,
                # УИН для ювелирных изделий / UIN for jewelry
                uin_code: nil,
                # Код маркировки товара / Product marking code
                upi_code: nil,
                # Ставка НДС (%) / VAT rate (%)
                vat: nil,
                # Артикул товара / Vendor code
                vendor_code: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency:
                      DeliveryFivePostClient::API::V1::Currency::OrSymbol,
                    name: String,
                    price: Float,
                    quantity: Integer,
                    barcode: String,
                    uin_code: String,
                    upi_code: String,
                    vat:
                      DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                    vendor_code: String
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
