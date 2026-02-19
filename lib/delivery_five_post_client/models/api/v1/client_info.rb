# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class ClientInfo < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute name
          #   ФИО клиента / Client full name
          #
          #   @return [String]
          required :name, String

          # @!attribute phone
          #   Номер телефона в международном формате (+79001234567) / Phone number in
          #   international format (+79001234567)
          #
          #   @return [String]
          required :phone, String

          # @!attribute alternative_phone
          #   Номер телефона в международном формате (+79001234567) / Phone number in
          #   international format (+79001234567)
          #
          #   @return [String, nil]
          optional :alternative_phone, String, api_name: :alternativePhone

          # @!attribute email
          #   Email адрес / Email address
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute passport_validation
          #   Требуется ли проверка паспорта при выдаче / Is passport validation required at
          #   pickup
          #
          #   @return [Boolean, nil]
          optional :passport_validation,
                   DeliveryFivePostClient::Internal::Type::Boolean,
                   api_name: :passportValidation

          # @!method initialize(name:, phone:, alternative_phone: nil, email: nil, passport_validation: nil)
          #   Some parameter documentations has been truncated, see
          #   {DeliveryFivePostClient::Models::API::V1::ClientInfo} for more details.
          #
          #   Информация о клиенте / Client information
          #
          #   @param name [String] ФИО клиента / Client full name
          #
          #   @param phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
          #
          #   @param alternative_phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
          #
          #   @param email [String] Email адрес / Email address
          #
          #   @param passport_validation [Boolean] Требуется ли проверка паспорта при выдаче / Is passport validation required at p
        end
      end
    end
  end
end
