# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#create_order
        class OrderCreateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute cargoes
          #   Информация о созданных грузоместах / Created cargoes information
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoCreatedInfo>]
          required :cargoes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo] }

          # @!attribute execution_status
          #   Статусы исполнения заказа / Order execution statuses
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus]
          required :execution_status,
                   enum: -> { DeliveryFivePostClient::API::V1::ExecutionStatus },
                   api_name: :executionStatus

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
          #   Статус заказа / Order status
          #
          #   @return [String]
          required :status, String

          # @!attribute is_duplicate
          #   Маркер дубликата заказа / Duplicate order marker
          #
          #   @return [Boolean, nil]
          optional :is_duplicate, DeliveryFivePostClient::Internal::Type::Boolean, api_name: :isDuplicate

          # @!method initialize(cargoes:, execution_status:, order_id:, sender_order_id:, status:, is_duplicate: nil)
          #   Ответ на создание заказа / Order creation response
          #
          #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::Orders::CargoCreatedInfo>] Информация о созданных грузоместах / Created cargoes information
          #
          #   @param execution_status [Symbol, DeliveryFivePostClient::Models::API::V1::ExecutionStatus] Статусы исполнения заказа / Order execution statuses
          #
          #   @param order_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param sender_order_id [String] ID заказа партнера / Partner order ID
          #
          #   @param status [String] Статус заказа / Order status
          #
          #   @param is_duplicate [Boolean] Маркер дубликата заказа / Duplicate order marker
        end
      end
    end
  end
end
