# frozen_string_literal: true

require_relative "../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V2::PartnersTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_return_order_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v2.partners.create_return_order(
        base_order: {},
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
        return_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        warehouse: {id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V2::PartnerCreateReturnOrderResponse::Cargo]),
        order_id: String,
        sender_order_id: String
      }
    end
  end
end
