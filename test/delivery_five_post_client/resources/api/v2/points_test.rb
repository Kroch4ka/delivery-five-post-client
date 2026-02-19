# frozen_string_literal: true

require_relative "../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V2::PointsTest < DeliveryFivePostClient::Test::ResourceTest
  def test_get_c2c_pickup_points
    skip("Prism tests are disabled")

    response = @delivery_five_post_client.api.v2.points.get_c2c_pickup_points

    assert_pattern do
      response => ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint])
    end
  end

  def test_get_c2c_placement_points
    skip("Prism tests are disabled")

    response = @delivery_five_post_client.api.v2.points.get_c2c_placement_points

    assert_pattern do
      response => ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint])
    end
  end
end
