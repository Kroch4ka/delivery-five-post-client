# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Orders
            class Cargo
              # Добавление грузоместа / Add cargo
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
                ).returns(
                  DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo
                )
              end
              def create(
                # UUID в формате v4 / UUID in v4 format
                order_id,
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

              # Обновление грузоместа / Update cargo
              sig do
                params(
                  cargo_id: String,
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
                ).void
              end
              def update(
                # Path param: UUID в формате v4 / UUID in v4 format
                cargo_id,
                # Path param: UUID в формате v4 / UUID in v4 format
                order_id:,
                # Body param: Новая высота в см / New height in cm
                height: nil,
                # Body param: Новая длина в см / New length in cm
                length: nil,
                # Body param: Новая цена / New price
                price: nil,
                # Body param: Обновленные товарные позиции / Updated product values
                product_values: nil,
                # Body param: Ставка НДС (%) / VAT rate (%)
                vat: nil,
                # Body param: Информация о поставщике / Vendor information
                vendor: nil,
                # Body param: Новый вес в кг / New weight in kg
                weight: nil,
                # Body param: Новая ширина в см / New width in cm
                width: nil,
                request_options: {}
              )
              end

              # Удаление грузоместа / Delete cargo
              sig do
                params(
                  cargo_id: String,
                  order_id: String,
                  request_options:
                    DeliveryFivePostClient::RequestOptions::OrHash
                ).void
              end
              def delete(
                # UUID в формате v4 / UUID in v4 format
                cargo_id,
                # UUID в формате v4 / UUID in v4 format
                order_id:,
                request_options: {}
              )
              end

              # @api private
              sig do
                params(client: DeliveryFivePostClient::Client).returns(
                  T.attached_class
                )
              end
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
