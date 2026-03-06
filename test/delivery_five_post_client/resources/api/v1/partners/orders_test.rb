# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::OrdersTest < DeliveryFivePostClient::Test::ResourceTest
  def test_c2c_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.c2c(
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
        cost: {assessedValue: 0, paymentCurrency: :RUB, price: 0},
        receiver: {name: "name", phone: "+79001234567"},
        receiver_location: {},
        sender: {name: "name", phone: "+79001234567"},
        sender_location: {},
        sender_order_id: "senderOrderId"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse::Cargo]),
        order_id: String,
        sender_order_id: String
      }
    end
  end

  def test_update_client_info_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.update_client_info(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        client: {}
      )

    assert_pattern do
      response => nil
    end
  end

  def test_update_payment_value_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.update_payment_value(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        payment_value: 0
      )

    assert_pattern do
      response => nil
    end
  end
end
