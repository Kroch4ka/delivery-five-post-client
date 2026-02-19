# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders#update_client_info
          class OrderUpdateClientInfoParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute client
            #   Обновление информации о клиенте / Client information update
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdateClientInfoParams::Client]
            required :client, -> { DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams::Client }

            # @!method initialize(client:, request_options: {})
            #   @param client [DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdateClientInfoParams::Client] Обновление информации о клиенте / Client information update
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]

            class Client < DeliveryFivePostClient::Internal::Type::BaseModel
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

              # @!attribute name
              #   ФИО клиента / Client full name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute phone
              #   Номер телефона в международном формате (+79001234567) / Phone number in
              #   international format (+79001234567)
              #
              #   @return [String, nil]
              optional :phone, String

              # @!method initialize(alternative_phone: nil, email: nil, name: nil, phone: nil)
              #   Some parameter documentations has been truncated, see
              #   {DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdateClientInfoParams::Client}
              #   for more details.
              #
              #   Обновление информации о клиенте / Client information update
              #
              #   @param alternative_phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
              #
              #   @param email [String] Email адрес / Email address
              #
              #   @param name [String] ФИО клиента / Client full name
              #
              #   @param phone [String] Номер телефона в международном формате (+79001234567) / Phone number in internat
            end
          end
        end
      end
    end
  end
end
