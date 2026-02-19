# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::ReturnTest < DeliveryFivePostClient::Test::ResourceTest
  def test_retrieve_get_placement_code_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.return_.retrieve_get_placement_code(
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeResponse
    end

    assert_pattern do
      response => {
        placement_code: String
      }
    end
  end

  def test_retrieve_get_return_barcode_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.return_.retrieve_get_return_barcode(
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetReturnBarcodeResponse
    end

    assert_pattern do
      response => {
        barcode: String
      }
    end
  end
end
