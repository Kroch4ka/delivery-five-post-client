# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class Address < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::Address,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Город / City
          sig { returns(String) }
          attr_accessor :city

          # Страна / Country
          sig { returns(String) }
          attr_accessor :country

          # Номер дома / House number
          sig { returns(String) }
          attr_accessor :house

          # Регион / Region
          sig { returns(String) }
          attr_accessor :region

          # Улица / Street
          sig { returns(String) }
          attr_accessor :street

          # Почтовый индекс / ZIP code
          sig { returns(String) }
          attr_accessor :zip_code

          # Квартира/офис / Apartment/office
          sig { returns(T.nilable(String)) }
          attr_reader :flat

          sig { params(flat: String).void }
          attr_writer :flat

          # Адрес / Address
          sig do
            params(
              city: String,
              country: String,
              house: String,
              region: String,
              street: String,
              zip_code: String,
              flat: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Город / City
            city:,
            # Страна / Country
            country:,
            # Номер дома / House number
            house:,
            # Регион / Region
            region:,
            # Улица / Street
            street:,
            # Почтовый индекс / ZIP code
            zip_code:,
            # Квартира/офис / Apartment/office
            flat: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country: String,
                house: String,
                region: String,
                street: String,
                zip_code: String,
                flat: String
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
