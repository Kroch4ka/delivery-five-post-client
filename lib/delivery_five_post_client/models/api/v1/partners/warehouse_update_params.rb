# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Warehouse#update
          class WarehouseUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute address
            #   Обновление адреса / Address update
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Address, nil]
            optional :address, -> { DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address }

            # @!attribute contacts
            #   Обновление контактов / Contacts update
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Contacts, nil]
            optional :contacts, -> { DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts }

            # @!attribute name
            #   Новое название склада / New warehouse name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(address: nil, contacts: nil, name: nil, request_options: {})
            #   @param address [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Address] Обновление адреса / Address update
            #
            #   @param contacts [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Contacts] Обновление контактов / Contacts update
            #
            #   @param name [String] Новое название склада / New warehouse name
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]

            class Address < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute city
              #   Город / City
              #
              #   @return [String, nil]
              optional :city, String

              # @!attribute country
              #   Страна / Country
              #
              #   @return [String, nil]
              optional :country, String

              # @!attribute flat
              #   Квартира/офис / Apartment/office
              #
              #   @return [String, nil]
              optional :flat, String

              # @!attribute house
              #   Номер дома / House number
              #
              #   @return [String, nil]
              optional :house, String

              # @!attribute region
              #   Регион / Region
              #
              #   @return [String, nil]
              optional :region, String

              # @!attribute street
              #   Улица / Street
              #
              #   @return [String, nil]
              optional :street, String

              # @!attribute zip_code
              #   Почтовый индекс / ZIP code
              #
              #   @return [String, nil]
              optional :zip_code, String, api_name: :zipCode

              # @!method initialize(city: nil, country: nil, flat: nil, house: nil, region: nil, street: nil, zip_code: nil)
              #   Обновление адреса / Address update
              #
              #   @param city [String] Город / City
              #
              #   @param country [String] Страна / Country
              #
              #   @param flat [String] Квартира/офис / Apartment/office
              #
              #   @param house [String] Номер дома / House number
              #
              #   @param region [String] Регион / Region
              #
              #   @param street [String] Улица / Street
              #
              #   @param zip_code [String] Почтовый индекс / ZIP code
            end

            class Contacts < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute email
              #   Email адрес / Email address
              #
              #   @return [String, nil]
              optional :email, String

              # @!attribute phone
              #   Номер телефона в международном формате (+79001234567) / Phone number in
              #   international format (+79001234567)
              #
              #   @return [String, nil]
              optional :phone, String

              # @!method initialize(email: nil, phone: nil)
              #   Some parameter documentations has been truncated, see
              #   {DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Contacts}
              #   for more details.
              #
              #   Обновление контактов / Contacts update
              #
              #   @param email [String] Email адрес / Email address
              #
              #   @param phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
            end
          end
        end
      end
    end
  end
end
