# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Tariff#c2c
        class TariffC2cResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute currency
          #   Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          #   RUB is supported)
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Currency]
          required :currency, enum: -> { DeliveryFivePostClient::API::V1::Currency }

          # @!attribute delivery_cost
          #   Стоимость доставки / Delivery cost
          #
          #   @return [Float]
          required :delivery_cost, Float, api_name: :deliveryCost

          # @!attribute delivery_days
          #   Срок доставки (дней) / Delivery days
          #
          #   @return [Integer]
          required :delivery_days, Integer, api_name: :deliveryDays

          # @!attribute rate_zone
          #   Тарифная зона / Rate zone
          #
          #   @return [String, nil]
          optional :rate_zone, String, api_name: :rateZone

          # @!method initialize(currency:, delivery_cost:, delivery_days:, rate_zone: nil)
          #   Some parameter documentations has been truncated, see
          #   {DeliveryFivePostClient::Models::API::V1::TariffC2cResponse} for more details.
          #
          #   Ответ расчета стоимости C2C / C2C tariff response
          #
          #   @param currency [Symbol, DeliveryFivePostClient::Models::API::V1::Currency] Валюта (в текущей версии поддерживается только RUB) / Currency (currently only R
          #
          #   @param delivery_cost [Float] Стоимость доставки / Delivery cost
          #
          #   @param delivery_days [Integer] Срок доставки (дней) / Delivery days
          #
          #   @param rate_zone [String] Тарифная зона / Rate zone
        end
      end
    end
  end
end
