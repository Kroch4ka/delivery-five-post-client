# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders#update_payment_value
          class OrderUpdatePaymentValueParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute payment_value
            #   Новая сумма наложенного платежа / New payment value
            #
            #   @return [Float]
            required :payment_value, Float, api_name: :paymentValue

            # @!method initialize(payment_value:, request_options: {})
            #   @param payment_value [Float] Новая сумма наложенного платежа / New payment value
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
