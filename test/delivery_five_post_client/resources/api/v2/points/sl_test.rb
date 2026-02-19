# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V2::Points::SlTest < DeliveryFivePostClient::Test::ResourceTest
  def test_get_c2c_delivery_terms_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v2.points.sl.get_c2c_delivery_terms(
        from_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        to_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsResponse
    end

    assert_pattern do
      response => {
        max_delivery_days: Integer,
        min_delivery_days: Integer,
        logistics_scheme: String | nil
      }
    end
  end
end
