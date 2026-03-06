# frozen_string_literal: true

require_relative "../../../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::Tasks::Report::AvdsTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.tasks.report.avds.create(
        date_from: "2019-12-27",
        date_to: "2019-12-27"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdCreateResponse
    end

    assert_pattern do
      response => {
        task_id: String
      }
    end
  end

  def test_result_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.tasks.report.avds.result(
        task_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_status_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.tasks.report.avds.status(
        task_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusResponse
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
