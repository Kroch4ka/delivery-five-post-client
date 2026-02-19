# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class Address < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute city
          #   Город / City
          #
          #   @return [String]
          required :city, String

          # @!attribute country
          #   Страна / Country
          #
          #   @return [String]
          required :country, String

          # @!attribute house
          #   Номер дома / House number
          #
          #   @return [String]
          required :house, String

          # @!attribute region
          #   Регион / Region
          #
          #   @return [String]
          required :region, String

          # @!attribute street
          #   Улица / Street
          #
          #   @return [String]
          required :street, String

          # @!attribute zip_code
          #   Почтовый индекс / ZIP code
          #
          #   @return [String]
          required :zip_code, String, api_name: :zipCode

          # @!attribute flat
          #   Квартира/офис / Apartment/office
          #
          #   @return [String, nil]
          optional :flat, String

          # @!method initialize(city:, country:, house:, region:, street:, zip_code:, flat: nil)
          #   Адрес / Address
          #
          #   @param city [String] Город / City
          #
          #   @param country [String] Страна / Country
          #
          #   @param house [String] Номер дома / House number
          #
          #   @param region [String] Регион / Region
          #
          #   @param street [String] Улица / Street
          #
          #   @param zip_code [String] Почтовый индекс / ZIP code
          #
          #   @param flat [String] Квартира/офис / Apartment/office
        end
      end
    end
  end
end
