# frozen_string_literal: true

require_relative "../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::GetLabelStatusesTest < DeliveryFivePostClient::Test::ResourceTest
  def test_by_sender_order_ids_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.get_label_statuses.by_sender_order_ids(sender_order_ids: ["string"])

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse
    end

    assert_pattern do
      response => {
        label_statuses: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::GetLabelStatusBySenderOrderIDsResponse::LabelStatus])
      }
    end
  end
end
