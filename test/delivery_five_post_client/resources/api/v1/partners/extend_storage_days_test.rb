# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::ExtendStorageDaysTest < DeliveryFivePostClient::Test::ResourceTest
  def test_extend_storage_days_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.extend_storage_days.extend_storage_days(
        days: 1,
        order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayExtendStorageDaysResponse
    end

    assert_pattern do
      response => {
        task_id: String
      }
    end
  end

  def test_status_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.extend_storage_days.status(
        task_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::TaskStatusResponse
    end

    assert_pattern do
      response => {
        status: DeliveryFivePostClient::API::V1::Partners::TaskStatus,
        task_id: String,
        error_message: String | nil
      }
    end
  end
end
