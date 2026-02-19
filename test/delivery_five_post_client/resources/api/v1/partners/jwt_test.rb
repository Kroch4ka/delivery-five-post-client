# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::JwtTest < DeliveryFivePostClient::Test::ResourceTest
  def test_generate_required_params
    skip("Prism tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.jwt.generate(apikey: "apikey")

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::JwtGenerateResponse
    end

    assert_pattern do
      response => {
        token: String,
        expires_in: Integer
      }
    end
  end
end
