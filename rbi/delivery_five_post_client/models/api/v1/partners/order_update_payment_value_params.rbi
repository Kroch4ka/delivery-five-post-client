# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class OrderUpdatePaymentValueParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::OrderUpdatePaymentValueParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Новая сумма наложенного платежа / New payment value
            sig { returns(Float) }
            attr_accessor :payment_value

            sig do
              params(
                payment_value: Float,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Новая сумма наложенного платежа / New payment value
              payment_value:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  payment_value: Float,
                  request_options: DeliveryFivePostClient::RequestOptions
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
