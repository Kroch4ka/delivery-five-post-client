# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class WarehouseUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Обновление адреса / Address update
            sig do
              returns(
                T.nilable(
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address
                )
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address::OrHash
              ).void
            end
            attr_writer :address

            # Обновление контактов / Contacts update
            sig do
              returns(
                T.nilable(
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts
                )
              )
            end
            attr_reader :contacts

            sig do
              params(
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts::OrHash
              ).void
            end
            attr_writer :contacts

            # Новое название склада / New warehouse name
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                address:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address::OrHash,
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts::OrHash,
                name: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Обновление адреса / Address update
              address: nil,
              # Обновление контактов / Contacts update
              contacts: nil,
              # Новое название склада / New warehouse name
              name: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  address:
                    DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address,
                  contacts:
                    DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts,
                  name: String,
                  request_options: DeliveryFivePostClient::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Address < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Город / City
              sig { returns(T.nilable(String)) }
              attr_reader :city

              sig { params(city: String).void }
              attr_writer :city

              # Страна / Country
              sig { returns(T.nilable(String)) }
              attr_reader :country

              sig { params(country: String).void }
              attr_writer :country

              # Квартира/офис / Apartment/office
              sig { returns(T.nilable(String)) }
              attr_reader :flat

              sig { params(flat: String).void }
              attr_writer :flat

              # Номер дома / House number
              sig { returns(T.nilable(String)) }
              attr_reader :house

              sig { params(house: String).void }
              attr_writer :house

              # Регион / Region
              sig { returns(T.nilable(String)) }
              attr_reader :region

              sig { params(region: String).void }
              attr_writer :region

              # Улица / Street
              sig { returns(T.nilable(String)) }
              attr_reader :street

              sig { params(street: String).void }
              attr_writer :street

              # Почтовый индекс / ZIP code
              sig { returns(T.nilable(String)) }
              attr_reader :zip_code

              sig { params(zip_code: String).void }
              attr_writer :zip_code

              # Обновление адреса / Address update
              sig do
                params(
                  city: String,
                  country: String,
                  flat: String,
                  house: String,
                  region: String,
                  street: String,
                  zip_code: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Город / City
                city: nil,
                # Страна / Country
                country: nil,
                # Квартира/офис / Apartment/office
                flat: nil,
                # Номер дома / House number
                house: nil,
                # Регион / Region
                region: nil,
                # Улица / Street
                street: nil,
                # Почтовый индекс / ZIP code
                zip_code: nil
              )
              end

              sig do
                override.returns(
                  {
                    city: String,
                    country: String,
                    flat: String,
                    house: String,
                    region: String,
                    street: String,
                    zip_code: String
                  }
                )
              end
              def to_hash
              end
            end

            class Contacts < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Email адрес / Email address
              sig { returns(T.nilable(String)) }
              attr_reader :email

              sig { params(email: String).void }
              attr_writer :email

              # Номер телефона в международном формате (+79001234567) / Phone number in
              # international format (+79001234567)
              sig { returns(T.nilable(String)) }
              attr_reader :phone

              sig { params(phone: String).void }
              attr_writer :phone

              # Обновление контактов / Contacts update
              sig do
                params(email: String, phone: String).returns(T.attached_class)
              end
              def self.new(
                # Email адрес / Email address
                email: nil,
                # Номер телефона в международном формате (+79001234567) / Phone number in
                # international format (+79001234567)
                phone: nil
              )
              end

              sig { override.returns({ email: String, phone: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
