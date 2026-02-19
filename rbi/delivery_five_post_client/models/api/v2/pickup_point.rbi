# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        class PickupPoint < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V2::PickupPoint,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :id

          # Активность точки / Point is active
          sig { returns(T::Boolean) }
          attr_accessor :active

          # Дополнительные сервисы / Additional services
          sig { returns(T::Array[String]) }
          attr_accessor :additional

          # Полный адрес / Full address
          sig { returns(String) }
          attr_accessor :address

          # Город / City
          sig { returns(String) }
          attr_accessor :city

          # Логистические схемы доставки / Delivery logistic schemes
          sig { returns(T::Array[String]) }
          attr_accessor :delivery_sl

          # Широта / Latitude
          sig { returns(Float) }
          attr_accessor :latitude

          # Долгота / Longitude
          sig { returns(Float) }
          attr_accessor :longitude

          # Максимальная высота (см) / Maximum height (cm)
          sig { returns(Float) }
          attr_accessor :max_height

          # Максимальная длина (см) / Maximum length (cm)
          sig { returns(Float) }
          attr_accessor :max_length

          # Максимальный вес (кг) / Maximum weight (kg)
          sig { returns(Float) }
          attr_accessor :max_weight

          # Максимальная ширина (см) / Maximum width (cm)
          sig { returns(Float) }
          attr_accessor :max_width

          # MDM код точки / MDM code
          sig { returns(String) }
          attr_accessor :mdm_code

          # Поддержка многоместных отправлений / Multi-place delivery support
          sig { returns(T::Boolean) }
          attr_accessor :multiplace_delivery

          # Название точки выдачи / Pickup point name
          sig { returns(String) }
          attr_accessor :name

          # Номер телефона в международном формате (+79001234567) / Phone number in
          # international format (+79001234567)
          sig { returns(String) }
          attr_accessor :phone

          # Готовность к приему / Point is ready
          sig { returns(T::Boolean) }
          attr_accessor :ready

          # Регион / Region
          sig { returns(String) }
          attr_accessor :region

          # Время работы / Working hours
          sig { returns(String) }
          attr_accessor :work_time

          # Информация о складе снабжения / Last mile warehouse information
          sig do
            returns(
              T.nilable(
                DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse
              )
            )
          end
          attr_reader :last_mile_warehouse

          sig do
            params(
              last_mile_warehouse:
                DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse::OrHash
            ).void
          end
          attr_writer :last_mile_warehouse

          # Минимальный срок доставки (дни) / Minimum delivery days
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_delivery_days

          sig { params(min_delivery_days: Integer).void }
          attr_writer :min_delivery_days

          # Тарифная информация / Rate information
          sig do
            returns(
              T.nilable(DeliveryFivePostClient::API::V2::PickupPoint::Rate)
            )
          end
          attr_reader :rate

          sig do
            params(
              rate: DeliveryFivePostClient::API::V2::PickupPoint::Rate::OrHash
            ).void
          end
          attr_writer :rate

          # Точка выдачи / Pickup point
          sig do
            params(
              id: String,
              active: T::Boolean,
              additional: T::Array[String],
              address: String,
              city: String,
              delivery_sl: T::Array[String],
              latitude: Float,
              longitude: Float,
              max_height: Float,
              max_length: Float,
              max_weight: Float,
              max_width: Float,
              mdm_code: String,
              multiplace_delivery: T::Boolean,
              name: String,
              phone: String,
              ready: T::Boolean,
              region: String,
              work_time: String,
              last_mile_warehouse:
                DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse::OrHash,
              min_delivery_days: Integer,
              rate: DeliveryFivePostClient::API::V2::PickupPoint::Rate::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # UUID в формате v4 / UUID in v4 format
            id:,
            # Активность точки / Point is active
            active:,
            # Дополнительные сервисы / Additional services
            additional:,
            # Полный адрес / Full address
            address:,
            # Город / City
            city:,
            # Логистические схемы доставки / Delivery logistic schemes
            delivery_sl:,
            # Широта / Latitude
            latitude:,
            # Долгота / Longitude
            longitude:,
            # Максимальная высота (см) / Maximum height (cm)
            max_height:,
            # Максимальная длина (см) / Maximum length (cm)
            max_length:,
            # Максимальный вес (кг) / Maximum weight (kg)
            max_weight:,
            # Максимальная ширина (см) / Maximum width (cm)
            max_width:,
            # MDM код точки / MDM code
            mdm_code:,
            # Поддержка многоместных отправлений / Multi-place delivery support
            multiplace_delivery:,
            # Название точки выдачи / Pickup point name
            name:,
            # Номер телефона в международном формате (+79001234567) / Phone number in
            # international format (+79001234567)
            phone:,
            # Готовность к приему / Point is ready
            ready:,
            # Регион / Region
            region:,
            # Время работы / Working hours
            work_time:,
            # Информация о складе снабжения / Last mile warehouse information
            last_mile_warehouse: nil,
            # Минимальный срок доставки (дни) / Minimum delivery days
            min_delivery_days: nil,
            # Тарифная информация / Rate information
            rate: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                active: T::Boolean,
                additional: T::Array[String],
                address: String,
                city: String,
                delivery_sl: T::Array[String],
                latitude: Float,
                longitude: Float,
                max_height: Float,
                max_length: Float,
                max_weight: Float,
                max_width: Float,
                mdm_code: String,
                multiplace_delivery: T::Boolean,
                name: String,
                phone: String,
                ready: T::Boolean,
                region: String,
                work_time: String,
                last_mile_warehouse:
                  DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse,
                min_delivery_days: Integer,
                rate: DeliveryFivePostClient::API::V2::PickupPoint::Rate
              }
            )
          end
          def to_hash
          end

          class LastMileWarehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V2::PickupPoint::LastMileWarehouse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :id

            # Название склада / Warehouse name
            sig { returns(String) }
            attr_accessor :name

            # Информация о складе снабжения / Last mile warehouse information
            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              id:,
              # Название склада / Warehouse name
              name:
            )
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end

          class Rate < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V2::PickupPoint::Rate,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Стоимость без НДС / Price without VAT
            sig { returns(Float) }
            attr_accessor :rate_value

            # Стоимость с НДС / Price with VAT
            sig { returns(Float) }
            attr_accessor :rate_value_with_vat

            # Ставка НДС (%) / VAT rate (%)
            sig do
              returns(
                DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
              )
            end
            attr_accessor :vat

            # Дополнительная стоимость без НДС / Additional price without VAT
            sig { returns(T.nilable(Float)) }
            attr_reader :rate_extra_value

            sig { params(rate_extra_value: Float).void }
            attr_writer :rate_extra_value

            # Дополнительная стоимость с НДС / Additional price with VAT
            sig { returns(T.nilable(Float)) }
            attr_reader :rate_extra_value_with_vat

            sig { params(rate_extra_value_with_vat: Float).void }
            attr_writer :rate_extra_value_with_vat

            # Тарифная информация / Rate information
            sig do
              params(
                rate_value: Float,
                rate_value_with_vat: Float,
                vat:
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::OrFloat,
                rate_extra_value: Float,
                rate_extra_value_with_vat: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Стоимость без НДС / Price without VAT
              rate_value:,
              # Стоимость с НДС / Price with VAT
              rate_value_with_vat:,
              # Ставка НДС (%) / VAT rate (%)
              vat:,
              # Дополнительная стоимость без НДС / Additional price without VAT
              rate_extra_value: nil,
              # Дополнительная стоимость с НДС / Additional price with VAT
              rate_extra_value_with_vat: nil
            )
            end

            sig do
              override.returns(
                {
                  rate_value: Float,
                  rate_value_with_vat: Float,
                  vat:
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat,
                  rate_extra_value: Float,
                  rate_extra_value_with_vat: Float
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
