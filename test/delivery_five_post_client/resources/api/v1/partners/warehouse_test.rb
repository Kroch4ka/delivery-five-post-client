# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::WarehouseTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.warehouse.create(
        address: {
          city: "city",
          country: "country",
          house: "house",
          region: "region",
          street: "street",
          zipCode: "zipCode"
        },
        contacts: {email: "user@example.com", phone: "+79001234567"},
        external_id: "externalId",
        name: "name"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::WarehouseCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        address: DeliveryFivePostClient::API::V1::Address,
        contacts: DeliveryFivePostClient::API::V1::Partners::Contacts,
        external_id: String,
        name: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.warehouse.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::WarehouseInfo
    end

    assert_pattern do
      response => {
        id: String,
        address: DeliveryFivePostClient::API::V1::Address,
        contacts: DeliveryFivePostClient::API::V1::Partners::Contacts,
        external_id: String,
        name: String
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.warehouse.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::WarehouseInfo
    end

    assert_pattern do
      response => {
        id: String,
        address: DeliveryFivePostClient::API::V1::Address,
        contacts: DeliveryFivePostClient::API::V1::Partners::Contacts,
        external_id: String,
        name: String
      }
    end
  end
end
