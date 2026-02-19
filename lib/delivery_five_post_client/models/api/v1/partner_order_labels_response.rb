# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#order_labels
        class PartnerOrderLabelsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute labels
          #   Массив этикеток / Array of labels
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label>]
          required :labels,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label] }

          # @!method initialize(labels:)
          #   Ответ с этикетками / Order labels response
          #
          #   @param labels [Array<DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label>] Массив этикеток / Array of labels

          class Label < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute label
            #   Этикетка в формате Base64 / Label in Base64 format
            #
            #   @return [String]
            required :label, String

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!method initialize(label:, order_id:)
            #   Информация об этикетке / Label information
            #
            #   @param label [String] Этикетка в формате Base64 / Label in Base64 format
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
