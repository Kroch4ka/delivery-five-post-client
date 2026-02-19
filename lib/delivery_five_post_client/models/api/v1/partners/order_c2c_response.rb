# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders#c2c
          class OrderC2cResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute cargoes
            #   Информация о грузоместах / Cargoes info
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse::Cargo>]
            required :cargoes,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse::Cargo] }

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute sender_order_id
            #   ID заказа отправителя / Sender order ID
            #
            #   @return [String]
            required :sender_order_id, String, api_name: :senderOrderId

            # @!method initialize(cargoes:, order_id:, sender_order_id:)
            #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse::Cargo>] Информация о грузоместах / Cargoes info
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param sender_order_id [String] ID заказа отправителя / Sender order ID

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
end
