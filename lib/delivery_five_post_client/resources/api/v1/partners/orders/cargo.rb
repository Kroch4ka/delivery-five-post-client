# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Orders
            class Cargo
              # Добавление грузоместа / Add cargo
              #
              # @overload create(order_id, height:, length:, price:, product_values:, sender_cargo_id:, weight:, width:, barcode: nil, vat: nil, vendor: nil, request_options: {})
              #
              # @param order_id [String] UUID в формате v4 / UUID in v4 format
              #
              # @param height [Float] Высота в см / Height in cm
              #
              # @param length [Float] Длина в см / Length in cm
              #
              # @param price [Float] Цена грузоместа / Cargo price
              #
              # @param product_values [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>] Товарные позиции / Product values
              #
              # @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
              #
              # @param weight [Float] Вес в кг / Weight in kg
              #
              # @param width [Float] Ширина в см / Width in cm
              #
              # @param barcode [String] Штрих-код грузоместа / Cargo barcode
              #
              # @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Ставка НДС (%) / VAT rate (%)
              #
              # @param vendor [DeliveryFivePostClient::Models::API::V1::Partners::Orders::VendorInfo] Информация о поставщике / Vendor information
              #
              # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoCreatedInfo]
              #
              # @see DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoCreateParams
              def create(order_id, params)
                parsed, options =
                  DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreateParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: ["api/v1/partners/orders/%1$s/cargo", order_id],
                  body: parsed,
                  model: DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo,
                  options: options
                )
              end

              # Обновление грузоместа / Update cargo
              #
              # @overload update(cargo_id, order_id:, height: nil, length: nil, price: nil, product_values: nil, vat: nil, vendor: nil, weight: nil, width: nil, request_options: {})
              #
              # @param cargo_id [String] Path param: UUID в формате v4 / UUID in v4 format
              #
              # @param order_id [String] Path param: UUID в формате v4 / UUID in v4 format
              #
              # @param height [Float] Body param: Новая высота в см / New height in cm
              #
              # @param length [Float] Body param: Новая длина в см / New length in cm
              #
              # @param price [Float] Body param: Новая цена / New price
              #
              # @param product_values [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>] Body param: Обновленные товарные позиции / Updated product values
              #
              # @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Body param: Ставка НДС (%) / VAT rate (%)
              #
              # @param vendor [DeliveryFivePostClient::Models::API::V1::Partners::Orders::VendorInfo] Body param: Информация о поставщике / Vendor information
              #
              # @param weight [Float] Body param: Новый вес в кг / New weight in kg
              #
              # @param width [Float] Body param: Новая ширина в см / New width in cm
              #
              # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoUpdateParams
              def update(cargo_id, params)
                parsed, options =
                  DeliveryFivePostClient::API::V1::Partners::Orders::CargoUpdateParams.dump_request(params)
                order_id =
                  parsed.delete(:order_id) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :put,
                  path: ["api/v1/partners/orders/%1$s/cargo/%2$s", order_id, cargo_id],
                  body: parsed,
                  model: NilClass,
                  options: options
                )
              end

              # Удаление грузоместа / Delete cargo
              #
              # @overload delete(cargo_id, order_id:, request_options: {})
              #
              # @param cargo_id [String] UUID в формате v4 / UUID in v4 format
              #
              # @param order_id [String] UUID в формате v4 / UUID in v4 format
              #
              # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoDeleteParams
              def delete(cargo_id, params)
                parsed, options =
                  DeliveryFivePostClient::API::V1::Partners::Orders::CargoDeleteParams.dump_request(params)
                order_id =
                  parsed.delete(:order_id) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :delete,
                  path: ["api/v1/partners/orders/%1$s/cargo/%2$s", order_id, cargo_id],
                  model: NilClass,
                  options: options
                )
              end

              # @api private
              #
              # @param client [DeliveryFivePostClient::Client]
              def initialize(client:)
                @client = client
              end
            end
          end
        end
      end
    end
  end
end
