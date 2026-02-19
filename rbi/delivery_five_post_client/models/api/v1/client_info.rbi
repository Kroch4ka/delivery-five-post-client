# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class ClientInfo < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::ClientInfo,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # ФИО клиента / Client full name
          sig { returns(String) }
          attr_accessor :name

          # Номер телефона в международном формате (+79001234567) / Phone number in
          # international format (+79001234567)
          sig { returns(String) }
          attr_accessor :phone

          # Номер телефона в международном формате (+79001234567) / Phone number in
          # international format (+79001234567)
          sig { returns(T.nilable(String)) }
          attr_reader :alternative_phone

          sig { params(alternative_phone: String).void }
          attr_writer :alternative_phone

          # Email адрес / Email address
          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          # Требуется ли проверка паспорта при выдаче / Is passport validation required at
          # pickup
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :passport_validation

          sig { params(passport_validation: T::Boolean).void }
          attr_writer :passport_validation

          # Информация о клиенте / Client information
          sig do
            params(
              name: String,
              phone: String,
              alternative_phone: String,
              email: String,
              passport_validation: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # ФИО клиента / Client full name
            name:,
            # Номер телефона в международном формате (+79001234567) / Phone number in
            # international format (+79001234567)
            phone:,
            # Номер телефона в международном формате (+79001234567) / Phone number in
            # international format (+79001234567)
            alternative_phone: nil,
            # Email адрес / Email address
            email: nil,
            # Требуется ли проверка паспорта при выдаче / Is passport validation required at
            # pickup
            passport_validation: nil
          )
          end

          sig do
            override.returns(
              {
                name: String,
                phone: String,
                alternative_phone: String,
                email: String,
                passport_validation: T::Boolean
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
