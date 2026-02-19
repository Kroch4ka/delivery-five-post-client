# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_security_code
        class PartnerGetSecurityCodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute security_codes
          #   Массив кодов выдачи / Array of security codes
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode>]
          required :security_codes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode] },
                   api_name: :securityCodes

          # @!method initialize(security_codes:)
          #   Ответ с кодами выдачи / Get security codes response
          #
          #   @param security_codes [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode>] Массив кодов выдачи / Array of security codes

          class SecurityCode < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute security_code
            #   Код выдачи заказа / Order security code
            #
            #   @return [String]
            required :security_code, String, api_name: :securityCode

            # @!method initialize(order_id:, security_code:)
            #   Информация о коде выдачи / Security code information
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param security_code [String] Код выдачи заказа / Order security code
          end
        end
      end
    end
  end
end
