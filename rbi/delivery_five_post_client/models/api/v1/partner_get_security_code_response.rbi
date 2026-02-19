# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetSecurityCodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив кодов выдачи / Array of security codes
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode
              ]
            )
          end
          attr_accessor :security_codes

          # Ответ с кодами выдачи / Get security codes response
          sig do
            params(
              security_codes:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив кодов выдачи / Array of security codes
            security_codes:
          )
          end

          sig do
            override.returns(
              {
                security_codes:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode
                  ]
              }
            )
          end
          def to_hash
          end

          class SecurityCode < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # Код выдачи заказа / Order security code
            sig { returns(String) }
            attr_accessor :security_code

            # Информация о коде выдачи / Security code information
            sig do
              params(order_id: String, security_code: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              # Код выдачи заказа / Order security code
              security_code:
            )
            end

            sig do
              override.returns({ order_id: String, security_code: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
