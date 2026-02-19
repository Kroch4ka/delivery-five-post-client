# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        class PickupPoint < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :id, String

          # @!attribute active
          #   Активность точки / Point is active
          #
          #   @return [Boolean]
          required :active, DeliveryFivePostClient::Internal::Type::Boolean

          # @!attribute additional
          #   Дополнительные сервисы / Additional services
          #
          #   @return [Array<String>]
          required :additional, DeliveryFivePostClient::Internal::Type::ArrayOf[String]

          # @!attribute address
          #   Полный адрес / Full address
          #
          #   @return [String]
          required :address, String

          # @!attribute city
          #   Город / City
          #
          #   @return [String]
          required :city, String

          # @!attribute delivery_sl
          #   Логистические схемы доставки / Delivery logistic schemes
          #
          #   @return [Array<String>]
          required :delivery_sl,
                   DeliveryFivePostClient::Internal::Type::ArrayOf[String],
                   api_name: :deliverySl

          # @!attribute latitude
          #   Широта / Latitude
          #
          #   @return [Float]
          required :latitude, Float

          # @!attribute longitude
          #   Долгота / Longitude
          #
          #   @return [Float]
          required :longitude, Float

          # @!attribute max_height
          #   Максимальная высота (см) / Maximum height (cm)
          #
          #   @return [Float]
          required :max_height, Float, api_name: :maxHeight

          # @!attribute max_length
          #   Максимальная длина (см) / Maximum length (cm)
          #
          #   @return [Float]
          required :max_length, Float, api_name: :maxLength

          # @!attribute max_weight
          #   Максимальный вес (кг) / Maximum weight (kg)
          #
          #   @return [Float]
          required :max_weight, Float, api_name: :maxWeight

          # @!attribute max_width
          #   Максимальная ширина (см) / Maximum width (cm)
          #
          #   @return [Float]
          required :max_width, Float, api_name: :maxWidth

          # @!attribute mdm_code
          #   MDM код точки / MDM code
          #
          #   @return [String]
          required :mdm_code, String, api_name: :mdmCode

          # @!attribute multiplace_delivery
          #   Поддержка многоместных отправлений / Multi-place delivery support
          #
          #   @return [Boolean]
          required :multiplace_delivery,
                   DeliveryFivePostClient::Internal::Type::Boolean,
                   api_name: :multiplaceDelivery

          # @!attribute name
          #   Название точки выдачи / Pickup point name
          #
          #   @return [String]
          required :name, String

          # @!attribute phone
          #   Номер телефона в международном формате (+79001234567) / Phone number in
          #   international format (+79001234567)
          #
          #   @return [String]
          required :phone, String

          # @!attribute ready
          #   Готовность к приему / Point is ready
          #
          #   @return [Boolean]
          required :ready, DeliveryFivePostClient::Internal::Type::Boolean

          # @!attribute region
          #   Регион / Region
          #
          #   @return [String]
          required :region, String

          # @!attribute work_time
          #   Время работы / Working hours
          #
          #   @return [String]
          required :work_time, String, api_name: :workTime

          # @!attribute last_mile_warehouse
          #   Информация о складе снабжения / Last mile warehouse information
          #
          #   @return [DeliveryFivePostClient::Models::API::V2::PickupPoint::LastMileWarehouse, nil]
          optional :last_mile_warehouse,
                   -> { DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse },
                   api_name: :lastMileWarehouse

          # @!attribute min_delivery_days
          #   Минимальный срок доставки (дни) / Minimum delivery days
          #
          #   @return [Integer, nil]
          optional :min_delivery_days, Integer, api_name: :minDeliveryDays

          # @!attribute rate
          #   Тарифная информация / Rate information
          #
          #   @return [DeliveryFivePostClient::Models::API::V2::PickupPoint::Rate, nil]
          optional :rate, -> { DeliveryFivePostClient::API::V2::PickupPoint::Rate }

          # @!method initialize(id:, active:, additional:, address:, city:, delivery_sl:, latitude:, longitude:, max_height:, max_length:, max_weight:, max_width:, mdm_code:, multiplace_delivery:, name:, phone:, ready:, region:, work_time:, last_mile_warehouse: nil, min_delivery_days: nil, rate: nil)
          #   Some parameter documentations has been truncated, see
          #   {DeliveryFivePostClient::Models::API::V2::PickupPoint} for more details.
          #
          #   Точка выдачи / Pickup point
          #
          #   @param id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param active [Boolean] Активность точки / Point is active
          #
          #   @param additional [Array<String>] Дополнительные сервисы / Additional services
          #
          #   @param address [String] Полный адрес / Full address
          #
          #   @param city [String] Город / City
          #
          #   @param delivery_sl [Array<String>] Логистические схемы доставки / Delivery logistic schemes
          #
          #   @param latitude [Float] Широта / Latitude
          #
          #   @param longitude [Float] Долгота / Longitude
          #
          #   @param max_height [Float] Максимальная высота (см) / Maximum height (cm)
          #
          #   @param max_length [Float] Максимальная длина (см) / Maximum length (cm)
          #
          #   @param max_weight [Float] Максимальный вес (кг) / Maximum weight (kg)
          #
          #   @param max_width [Float] Максимальная ширина (см) / Maximum width (cm)
          #
          #   @param mdm_code [String] MDM код точки / MDM code
          #
          #   @param multiplace_delivery [Boolean] Поддержка многоместных отправлений / Multi-place delivery support
          #
          #   @param name [String] Название точки выдачи / Pickup point name
          #
          #   @param phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
          #
          #   @param ready [Boolean] Готовность к приему / Point is ready
          #
          #   @param region [String] Регион / Region
          #
          #   @param work_time [String] Время работы / Working hours
          #
          #   @param last_mile_warehouse [DeliveryFivePostClient::Models::API::V2::PickupPoint::LastMileWarehouse] Информация о складе снабжения / Last mile warehouse information
          #
          #   @param min_delivery_days [Integer] Минимальный срок доставки (дни) / Minimum delivery days
          #
          #   @param rate [DeliveryFivePostClient::Models::API::V2::PickupPoint::Rate] Тарифная информация / Rate information

          # @see DeliveryFivePostClient::Models::API::V2::PickupPoint#last_mile_warehouse
          class LastMileWarehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Название склада / Warehouse name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   Информация о складе снабжения / Last mile warehouse information
            #
            #   @param id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param name [String] Название склада / Warehouse name
          end

          # @see DeliveryFivePostClient::Models::API::V2::PickupPoint#rate
          class Rate < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute rate_value
            #   Стоимость без НДС / Price without VAT
            #
            #   @return [Float]
            required :rate_value, Float, api_name: :rateValue

            # @!attribute rate_value_with_vat
            #   Стоимость с НДС / Price with VAT
            #
            #   @return [Float]
            required :rate_value_with_vat, Float, api_name: :rateValueWithVat

            # @!attribute vat
            #   Ставка НДС (%) / VAT rate (%)
            #
            #   @return [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate]
            required :vat, enum: -> { DeliveryFivePostClient::API::V1::Partners::Orders::VatRate }

            # @!attribute rate_extra_value
            #   Дополнительная стоимость без НДС / Additional price without VAT
            #
            #   @return [Float, nil]
            optional :rate_extra_value, Float, api_name: :rateExtraValue

            # @!attribute rate_extra_value_with_vat
            #   Дополнительная стоимость с НДС / Additional price with VAT
            #
            #   @return [Float, nil]
            optional :rate_extra_value_with_vat, Float, api_name: :rateExtraValueWithVat

            # @!method initialize(rate_value:, rate_value_with_vat:, vat:, rate_extra_value: nil, rate_extra_value_with_vat: nil)
            #   Тарифная информация / Rate information
            #
            #   @param rate_value [Float] Стоимость без НДС / Price without VAT
            #
            #   @param rate_value_with_vat [Float] Стоимость с НДС / Price with VAT
            #
            #   @param vat [Float, DeliveryFivePostClient::Models::API::V1::Partners::Orders::VatRate] Ставка НДС (%) / VAT rate (%)
            #
            #   @param rate_extra_value [Float] Дополнительная стоимость без НДС / Additional price without VAT
            #
            #   @param rate_extra_value_with_vat [Float] Дополнительная стоимость с НДС / Additional price with VAT
          end
        end
      end
    end
  end
end
