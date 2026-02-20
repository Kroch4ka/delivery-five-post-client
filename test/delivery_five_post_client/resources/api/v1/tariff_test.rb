# frozen_string_literal: true

require_relative "../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::TariffTest < DeliveryFivePostClient::Test::ResourceTest
  def test_c2c_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.tariff.c2c(
        assessed_value: 0,
        from_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        height: 0,
        length: 0,
        to_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        weight: 0,
        width: 0
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::TariffC2cResponse
    end

    assert_pattern do
      response => {
        currency: DeliveryFivePostClient::API::V1::Currency,
        delivery_cost: Float,
        delivery_days: Integer,
        rate_zone: String | nil
      }
    end
  end
end
