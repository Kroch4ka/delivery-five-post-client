# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo#update
            class CargoUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
              extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
              include DeliveryFivePostClient::Internal::Type::RequestParameters

              # @!attribute order_id
              #   UUID в формате v4 / UUID in v4 format
              #
              #   @return [String]
              required :order_id, String

              # @!attribute height
              #   Новая высота в см / New height in cm
              #
              #   @return [Float, nil]
              optional :height, Float

              # @!attribute length
              #   Новая длина в см / New length in cm
              #
              #   @return [Float, nil]
              optional :length, Float

              # @!attribute price
              #   Новая цена / New price
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute product_values
              #   Обновленные товарные позиции / Updated product values
              #
              #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>, nil]
              optional :product_values,
                       -> {
                         DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue]
                       },
                       api_name: :productValues

              # @!attribute vat
              #   Ставка НДС (%) / VAT rate (%)
              #
              #   @return [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate, nil]
              optional :vat, enum: -> { DeliveryFivePostClient::API::V1::Partners::Orders::VatRate }

              # @!attribute vendor
              #   Информация о поставщике / Vendor information
              #
              #   @return [DeliveryFivePostClient::Models::API::V1::Partners::Orders::VendorInfo, nil]
              optional :vendor, -> { DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo }

              # @!attribute weight
              #   Новый вес в кг / New weight in kg
              #
              #   @return [Float, nil]
              optional :weight, Float

              # @!attribute width
              #   Новая ширина в см / New width in cm
              #
              #   @return [Float, nil]
              optional :width, Float

              # @!method initialize(order_id:, height: nil, length: nil, price: nil, product_values: nil, vat: nil, vendor: nil, weight: nil, width: nil, request_options: {})
              #   @param order_id [String] UUID в формате v4 / UUID in v4 format
              #
              #   @param height [Float] Новая высота в см / New height in cm
              #
              #   @param length [Float] Новая длина в см / New length in cm
              #
              #   @param price [Float] Новая цена / New price
              #
              #   @param product_values [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>] Обновленные товарные позиции / Updated product values
              #
              #   @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Ставка НДС (%) / VAT rate (%)
              #
              #   @param vendor [DeliveryFivePostClient::Models::API::V1::Partners::Orders::VendorInfo] Информация о поставщике / Vendor information
              #
              #   @param weight [Float] Новый вес в кг / New weight in kg
              #
              #   @param width [Float] Новая ширина в см / New width in cm
              #
              #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
