# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#retrieve
        class PartnerRetrieveResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute expiration_date
          #   Дата окончания срока хранения / Storage expiration date
          #
          #   @return [Date]
          required :expiration_date, Date, api_name: :expirationDate

          # @!attribute order_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :order_id, String, api_name: :orderId

          # @!method initialize(expiration_date:, order_id:)
          #   Ответ с датой окончания хранения / Expiration date response
          #
          #   @param expiration_date [Date] Дата окончания срока хранения / Storage expiration date
          #
          #   @param order_id [String] UUID в формате v4 / UUID in v4 format
        end
      end
    end
  end
end
