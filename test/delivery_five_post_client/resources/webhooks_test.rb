# frozen_string_literal: true

require_relative "../test_helper"

class DeliveryFivePostClient::Test::Resources::WebhooksTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_cargo_status_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.webhooks.create_cargo_status(
        cargo_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        change_date: "2019-12-27T18:11:19.117Z",
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        sender_cargo_id: "senderCargoId",
        status: "status"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_order_status_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.webhooks.create_order_status(
        change_date: "2019-12-27T18:11:19.117Z",
        execution_status: :CREATED,
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        sender_order_id: "senderOrderId",
        status: "status"
      )

    assert_pattern do
      response => nil
    end
  end
end
