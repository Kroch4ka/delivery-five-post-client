# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo#create
            class CargoCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
              extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
              include DeliveryFivePostClient::Internal::Type::RequestParameters

              # @!attribute height
              #   Высота в см / Height in cm
              #
              #   @return [Float]
              required :height, Float

              # @!attribute length
              #   Длина в см / Length in cm
              #
              #   @return [Float]
              required :length, Float

              # @!attribute price
              #   Цена грузоместа / Cargo price
              #
              #   @return [Float]
              required :price, Float

              # @!attribute product_values
              #   Товарные позиции / Product values
              #
              #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>]
              required :product_values,
                       -> {
                         DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::Orders::ProductValue]
                       },
                       api_name: :productValues

              # @!attribute sender_cargo_id
              #   ID грузоместа партнера / Partner cargo ID
              #
              #   @return [String]
              required :sender_cargo_id, String, api_name: :senderCargoId

              # @!attribute weight
              #   Вес в кг / Weight in kg
              #
              #   @return [Float]
              required :weight, Float

              # @!attribute width
              #   Ширина в см / Width in cm
              #
              #   @return [Float]
              required :width, Float

              # @!attribute barcode
              #   Штрих-код грузоместа / Cargo barcode
              #
              #   @return [String, nil]
              optional :barcode, String

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

              # @!method initialize(height:, length:, price:, product_values:, sender_cargo_id:, weight:, width:, barcode: nil, vat: nil, vendor: nil, request_options: {})
              #   @param height [Float] Высота в см / Height in cm
              #
              #   @param length [Float] Длина в см / Length in cm
              #
              #   @param price [Float] Цена грузоместа / Cargo price
              #
              #   @param product_values [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::ProductValue>] Товарные позиции / Product values
              #
              #   @param sender_cargo_id [String] ID грузоместа партнера / Partner cargo ID
              #
              #   @param weight [Float] Вес в кг / Weight in kg
              #
              #   @param width [Float] Ширина в см / Width in cm
              #
              #   @param barcode [String] Штрих-код грузоместа / Cargo barcode
              #
              #   @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Ставка НДС (%) / VAT rate (%)
              #
              #   @param vendor [DeliveryFivePostClient::Models::API::V1::Partners::Orders::VendorInfo] Информация о поставщике / Vendor information
              #
              #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
