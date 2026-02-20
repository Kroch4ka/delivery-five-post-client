# frozen_string_literal: true

require_relative "../../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::Orders::CargoTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.cargo.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        height: 1,
        length: 1,
        price: 0,
        product_values: [{currency: :RUB, name: "name", price: 0, quantity: 1}],
        sender_cargo_id: "senderCargoId",
        weight: 1,
        width: 1
      )

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo
    end

    assert_pattern do
      response => {
        barcode: String,
        cargo_id: String,
        sender_cargo_id: String
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.cargo.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.orders.cargo.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
