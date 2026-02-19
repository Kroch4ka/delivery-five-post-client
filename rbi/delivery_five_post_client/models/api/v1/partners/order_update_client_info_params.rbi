# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class OrderUpdateClientInfoParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Обновление информации о клиенте / Client information update
            sig do
              returns(
                DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client
              )
            end
            attr_reader :client

            sig do
              params(
                client:
                  DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client::OrHash
              ).void
            end
            attr_writer :client

            sig do
              params(
                client:
                  DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client::OrHash,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Обновление информации о клиенте / Client information update
              client:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  client:
                    DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client,
                  request_options: DeliveryFivePostClient::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Client < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

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

              # ФИО клиента / Client full name
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Номер телефона в международном формате (+79001234567) / Phone number in
              # international format (+79001234567)
              sig { returns(T.nilable(String)) }
              attr_reader :phone

              sig { params(phone: String).void }
              attr_writer :phone

              # Обновление информации о клиенте / Client information update
              sig do
                params(
                  alternative_phone: String,
                  email: String,
                  name: String,
                  phone: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Номер телефона в международном формате (+79001234567) / Phone number in
                # international format (+79001234567)
                alternative_phone: nil,
                # Email адрес / Email address
                email: nil,
                # ФИО клиента / Client full name
                name: nil,
                # Номер телефона в международном формате (+79001234567) / Phone number in
                # international format (+79001234567)
                phone: nil
              )
              end

              sig do
                override.returns(
                  {
                    alternative_phone: String,
                    email: String,
                    name: String,
                    phone: String
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
end
