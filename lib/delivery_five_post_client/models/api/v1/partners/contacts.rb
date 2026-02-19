# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class Contacts < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute email
            #   Email адрес / Email address
            #
            #   @return [String]
            required :email, String

            # @!attribute phone
            #   Номер телефона в международном формате (+79001234567) / Phone number in
            #   international format (+79001234567)
            #
            #   @return [String]
            required :phone, String

            # @!method initialize(email:, phone:)
            #   Some parameter documentations has been truncated, see
            #   {DeliveryFivePostClient::Models::API::V1::Partners::Contacts} for more details.
            #
            #   Контакты / Contacts
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
