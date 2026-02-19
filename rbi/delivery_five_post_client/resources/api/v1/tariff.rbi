# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Tariff
          # Расчет стоимости C2C доставки / Calculate C2C delivery cost
          sig do
            params(
              assessed_value: Float,
              from_location_id: String,
              height: Float,
              length: Float,
              to_location_id: String,
              weight: Float,
              width: Float,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::TariffC2cResponse
            )
          end
          def c2c(
            # Оценочная стоимость / Assessed value
            assessed_value:,
            # UUID в формате v4 / UUID in v4 format
            from_location_id:,
            # Высота (см) / Height
            height:,
            # Длина (см) / Length
            length:,
            # UUID в формате v4 / UUID in v4 format
            to_location_id:,
            # Вес грузоместа (кг) / Weight
            weight:,
            # Ширина (см) / Width
            width:,
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
