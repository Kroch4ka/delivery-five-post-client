# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Tariff
          # Расчет стоимости C2C доставки / Calculate C2C delivery cost
          #
          # @overload c2c(assessed_value:, from_location_id:, height:, length:, to_location_id:, weight:, width:, request_options: {})
          #
          # @param assessed_value [Float] Оценочная стоимость / Assessed value
          #
          # @param from_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param height [Float] Высота (см) / Height
          #
          # @param length [Float] Длина (см) / Length
          #
          # @param to_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param weight [Float] Вес грузоместа (кг) / Weight
          #
          # @param width [Float] Ширина (см) / Width
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::TariffC2cResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::TariffC2cParams
          def c2c(params)
            parsed, options = DeliveryFivePostClient::API::V1::TariffC2cParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/tariff/c2c",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::TariffC2cResponse,
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
