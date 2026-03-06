# frozen_string_literal: true

require_relative "../../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::Partners::PartnerSupplyTest < DeliveryFivePostClient::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.partner_supply.create(
        cargoes: [{barcode: "barcode", orderId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}],
        planned_date: "2019-12-27",
        supply_type: :PLANNED,
        warehouse_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::SupplyInfo
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo]),
        created_date: Time,
        planned_date: Date,
        status: DeliveryFivePostClient::API::V1::Partners::SupplyStatus,
        supply_id: String,
        supply_type: DeliveryFivePostClient::API::V1::Partners::SupplyType,
        warehouse_id: String,
        actual_date: Date | nil,
        updated_date: Time | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.partner_supply.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::SupplyInfo
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo]),
        created_date: Time,
        planned_date: Date,
        status: DeliveryFivePostClient::API::V1::Partners::SupplyStatus,
        supply_id: String,
        supply_type: DeliveryFivePostClient::API::V1::Partners::SupplyType,
        warehouse_id: String,
        actual_date: Date | nil,
        updated_date: Time | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.partner_supply.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::Partners::SupplyInfo
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo]),
        created_date: Time,
        planned_date: Date,
        status: DeliveryFivePostClient::API::V1::Partners::SupplyStatus,
        supply_id: String,
        supply_type: DeliveryFivePostClient::API::V1::Partners::SupplyType,
        warehouse_id: String,
        actual_date: Date | nil,
        updated_date: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.partner_supply.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteResponse
    end

    assert_pattern do
      response => {
        success: DeliveryFivePostClient::Internal::Type::Boolean
      }
    end
  end

  def test_retrieve_partner_supply
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.partner_supply.retrieve_partner_supply

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyResponse
    end

    assert_pattern do
      response => {
        supplies: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyInfo]),
        total_count: Integer
      }
    end
  end
end
