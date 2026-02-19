# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class CargoCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
              extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
              include DeliveryFivePostClient::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreateParams,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Высота в см / Height in cm
              sig { returns(Float) }
              attr_accessor :height

              # Длина в см / Length in cm
              sig { returns(Float) }
              attr_accessor :length

              # Цена грузоместа / Cargo price
              sig { returns(Float) }
              attr_accessor :price

              # Товарные позиции / Product values
              sig do
                returns(
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue
                  ]
                )
              end
              attr_accessor :product_values

              # ID грузоместа партнера / Partner cargo ID
              sig { returns(String) }
              attr_accessor :sender_cargo_id

              # Вес в кг / Weight in kg
              sig { returns(Float) }
              attr_accessor :weight

              # Ширина в см / Width in cm
              sig { returns(Float) }
              attr_accessor :width

              # Штрих-код грузоместа / Cargo barcode
              sig { returns(T.nilable(String)) }
              attr_reader :barcode

              sig { params(barcode: String).void }
              attr_writer :barcode

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

              # Информация о поставщике / Vendor information
              sig do
                returns(
                  T.nilable(
                    DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo
                  )
                )
              end
              attr_reader :vendor

              sig do
                params(
                  vendor:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo::OrHash
                ).void
              end
              attr_writer :vendor

              sig do
                params(
                  height: Float,
                  length: Float,
                  price: Float,
                  product_values:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue::OrHash
                    ],
                  sender_cargo_id: String,
                  weight: Float,
                  width: Float,
                  barcode: String,
                  vat:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                  vendor:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo::OrHash,
                  request_options:
                    DeliveryFivePostClient::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Высота в см / Height in cm
                height:,
                # Длина в см / Length in cm
                length:,
                # Цена грузоместа / Cargo price
                price:,
                # Товарные позиции / Product values
                product_values:,
                # ID грузоместа партнера / Partner cargo ID
                sender_cargo_id:,
                # Вес в кг / Weight in kg
                weight:,
                # Ширина в см / Width in cm
                width:,
                # Штрих-код грузоместа / Cargo barcode
                barcode: nil,
                # Ставка НДС (%) / VAT rate (%)
                vat: nil,
                # Информация о поставщике / Vendor information
                vendor: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    height: Float,
                    length: Float,
                    price: Float,
                    product_values:
                      T::Array[
                        DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue
                      ],
                    sender_cargo_id: String,
                    weight: Float,
                    width: Float,
                    barcode: String,
                    vat:
                      DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                    vendor:
                      DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo,
                    request_options: DeliveryFivePostClient::RequestOptions
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
