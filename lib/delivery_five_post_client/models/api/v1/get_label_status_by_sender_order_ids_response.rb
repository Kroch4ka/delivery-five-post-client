# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::GetLabelStatuses#by_sender_order_ids
        class GetLabelStatusBySenderOrderIDsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute label_statuses
          #   Массив статусов этикеток / Array of label statuses
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus>]
          required :label_statuses,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus] },
                   api_name: :labelStatuses

          # @!method initialize(label_statuses:)
          #   Ответ со статусами этикеток / Label statuses response
          #
          #   @param label_statuses [Array<DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus>] Массив статусов этикеток / Array of label statuses

          class LabelStatus < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute sender_order_id
            #   ID заказа партнера / Partner order ID
            #
            #   @return [String]
            required :sender_order_id, String, api_name: :senderOrderId

            # @!attribute status
            #   Статус этикетки / Label status
            #
            #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status]
            required :status,
                     enum: -> { DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status }

            # @!method initialize(order_id:, sender_order_id:, status:)
            #   Информация о статусе этикетки / Label status information
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param sender_order_id [String] ID заказа партнера / Partner order ID
            #
            #   @param status [Symbol, DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus::Status] Статус этикетки / Label status

            # Статус этикетки / Label status
            #
            # @see DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus#status
            module Status
              extend DeliveryFivePostClient::Internal::Type::Enum

              NEW = :NEW
              READY = :READY
              ERROR = :ERROR

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
