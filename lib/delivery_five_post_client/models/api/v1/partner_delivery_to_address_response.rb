# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#delivery_to_address
        class PartnerDeliveryToAddressResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute currency
          #   Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          #   RUB is supported)
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Currency]
          required :currency, enum: -> { DeliveryFivePostClient::API::V1::Currency }

          # @!attribute delivery_days
          #   Срок доставки (дней) / Delivery time
          #
          #   @return [Integer]
          required :delivery_days, Integer, api_name: :deliveryDays

          # @!attribute total_cost
          #   Итоговая стоимость доставки / Total cost
          #
          #   @return [Float]
          required :total_cost, Float, api_name: :totalCost

          # @!attribute zone_id
          #   Зона доставки / Delivery zone
          #
          #   @return [String, nil]
          optional :zone_id, String, api_name: :zoneId

          # @!method initialize(currency:, delivery_days:, total_cost:, zone_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse} for
          #   more details.
          #
          #   Ответ стоимости доставки / Delivery cost response
          #
          #   @param currency [Symbol, DeliveryFivePostClient::Models::API::V1::Currency] Валюта (в текущей версии поддерживается только RUB) / Currency (currently only R
          #
          #   @param delivery_days [Integer] Срок доставки (дней) / Delivery time
          #
          #   @param total_cost [Float] Итоговая стоимость доставки / Total cost
          #
          #   @param zone_id [String] Зона доставки / Delivery zone
        end
      end
    end
  end
end
