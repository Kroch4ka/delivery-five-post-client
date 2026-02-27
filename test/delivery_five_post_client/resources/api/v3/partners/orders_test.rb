# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V3::Partners::OrdersTest < DeliveryFivePostClient::Test::ResourceTest
  def test_cancel_order
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v3.partners.orders.cancel_order("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_create_order_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v3.partners.orders.create_order(
        cargoes: [
          {
            height: 1,
            length: 1,
            price: 0,
            productValues: [{currency: :RUB, name: "name", price: 0, quantity: 1}],
            senderCargoId: "senderCargoId",
            weight: 1,
            width: 1
          }
        ],
        client: {name: "name", phone: "+79001234567"},
        cost: {assessedValue: 0, paymentCurrency: :RUB, price: 0},
        receiver: {},
        sender_order_id: "senderOrderId",
        warehouse: {id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}
      )

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::OrderCreateResponse
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo]),
        execution_status: DeliveryFivePostClient::API::V1::ExecutionStatus,
        order_id: String,
        sender_order_id: String,
        status: String,
        is_duplicate: DeliveryFivePostClient::Internal::Type::Boolean | nil
      }
    end
  end
end
