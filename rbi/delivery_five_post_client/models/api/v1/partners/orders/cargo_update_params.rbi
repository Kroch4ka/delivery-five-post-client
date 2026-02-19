# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class CargoUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
              extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
              include DeliveryFivePostClient::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::Orders::CargoUpdateParams,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # UUID в формате v4 / UUID in v4 format
              sig { returns(String) }
              attr_accessor :order_id

              # Новая высота в см / New height in cm
              sig { returns(T.nilable(Float)) }
              attr_reader :height

              sig { params(height: Float).void }
              attr_writer :height

              # Новая длина в см / New length in cm
              sig { returns(T.nilable(Float)) }
              attr_reader :length

              sig { params(length: Float).void }
              attr_writer :length

              # Новая цена / New price
              sig { returns(T.nilable(Float)) }
              attr_reader :price

              sig { params(price: Float).void }
              attr_writer :price

              # Обновленные товарные позиции / Updated product values
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue
                    ]
                  )
                )
              end
              attr_reader :product_values

              sig do
                params(
                  product_values:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue::OrHash
                    ]
                ).void
              end
              attr_writer :product_values

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

              # Новый вес в кг / New weight in kg
              sig { returns(T.nilable(Float)) }
              attr_reader :weight

              sig { params(weight: Float).void }
              attr_writer :weight

              # Новая ширина в см / New width in cm
              sig { returns(T.nilable(Float)) }
              attr_reader :width

              sig { params(width: Float).void }
              attr_writer :width

              sig do
                params(
                  order_id: String,
                  height: Float,
                  length: Float,
                  price: Float,
                  product_values:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue::OrHash
                    ],
                  vat:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                  vendor:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo::OrHash,
                  weight: Float,
                  width: Float,
                  request_options:
                    DeliveryFivePostClient::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # UUID в формате v4 / UUID in v4 format
                order_id:,
                # Новая высота в см / New height in cm
                height: nil,
                # Новая длина в см / New length in cm
                length: nil,
                # Новая цена / New price
                price: nil,
                # Обновленные товарные позиции / Updated product values
                product_values: nil,
                # Ставка НДС (%) / VAT rate (%)
                vat: nil,
                # Информация о поставщике / Vendor information
                vendor: nil,
                # Новый вес в кг / New weight in kg
                weight: nil,
                # Новая ширина в см / New width in cm
                width: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    order_id: String,
                    height: Float,
                    length: Float,
                    price: Float,
                    product_values:
                      T::Array[
                        DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue
                      ],
                    vat:
                      DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                    vendor:
                      DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo,
                    weight: Float,
                    width: Float,
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
