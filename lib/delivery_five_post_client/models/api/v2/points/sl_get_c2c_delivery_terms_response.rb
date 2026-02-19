# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        module Points
          # @see DeliveryFivePostClient::Resources::API::V2::Points::Sl#get_c2c_delivery_terms
          class SlGetC2cDeliveryTermsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute max_delivery_days
            #   Максимальный срок доставки (дней) / Max delivery days
            #
            #   @return [Integer]
            required :max_delivery_days, Integer, api_name: :maxDeliveryDays

            # @!attribute min_delivery_days
            #   Минимальный срок доставки (дней) / Min delivery days
            #
            #   @return [Integer]
            required :min_delivery_days, Integer, api_name: :minDeliveryDays

            # @!attribute logistics_scheme
            #   Логистическая схема / Logistics scheme
            #
            #   @return [String, nil]
            optional :logistics_scheme, String, api_name: :logisticsScheme

            # @!method initialize(max_delivery_days:, min_delivery_days:, logistics_scheme: nil)
            #   Ответ сроков доставки C2C / C2C delivery terms response
            #
            #   @param max_delivery_days [Integer] Максимальный срок доставки (дней) / Max delivery days
            #
            #   @param min_delivery_days [Integer] Минимальный срок доставки (дней) / Min delivery days
            #
            #   @param logistics_scheme [String] Логистическая схема / Logistics scheme
          end
        end
      end
    end
  end
end
