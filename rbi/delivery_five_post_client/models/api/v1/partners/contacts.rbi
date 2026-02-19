# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class Contacts < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::Contacts,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Email адрес / Email address
            sig { returns(String) }
            attr_accessor :email

            # Номер телефона в международном формате (+79001234567) / Phone number in
            # international format (+79001234567)
            sig { returns(String) }
            attr_accessor :phone

            # Контакты / Contacts
            sig do
              params(email: String, phone: String).returns(T.attached_class)
            end
            def self.new(
              # Email адрес / Email address
              email:,
              # Номер телефона в международном формате (+79001234567) / Phone number in
              # international format (+79001234567)
              phone:
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
