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

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String

            # @!attribute payment_value
            #   Новая сумма наложенного платежа / New payment value
            #
            #   @return [Float]
            required :payment_value, Float, api_name: :paymentValue

            # @!method initialize(order_id:, payment_value:, request_options: {})
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param payment_value [Float] Новая сумма наложенного платежа / New payment value
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
