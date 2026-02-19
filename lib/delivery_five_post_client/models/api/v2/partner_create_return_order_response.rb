# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V2
        # @see DeliveryFivePostClient::Resources::API::V2::Partners#create_return_order
        class PartnerCreateReturnOrderResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute cargoes
          #   Информация о грузоместах / Cargoes info
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo>]
          required :cargoes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo] }

          # @!attribute order_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :order_id, String, api_name: :orderId

          # @!attribute sender_order_id
          #   ID заказа отправителя (RT + barcode) / Sender order ID
          #
          #   @return [String]
          required :sender_order_id, String, api_name: :senderOrderId

          # @!method initialize(cargoes:, order_id:, sender_order_id:)
          #   Ответ создания возврата / Return creation response
          #
          #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo>] Информация о грузоместах / Cargoes info
          #
          #   @param order_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param sender_order_id [String] ID заказа отправителя (RT + barcode) / Sender order ID

          class Cargo < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute barcode
            #   Штрих-код / Barcode
            #
            #   @return [String]
            required :barcode, String

            # @!attribute cargo_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :cargo_id, String, api_name: :cargoId

            # @!method initialize(barcode:, cargo_id:)
            #   @param barcode [String] Штрих-код / Barcode
            #
            #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
