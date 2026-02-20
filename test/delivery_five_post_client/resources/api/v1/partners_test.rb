# frozen_string_literal: true

require_relative "../../../test_helper"

class DeliveryFivePostClient::Test::Resources::API::V1::PartnersTest < DeliveryFivePostClient::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerRetrieveResponse
    end

    assert_pattern do
      response => {
        expiration_date: Date,
        order_id: String
      }
    end
  end

  def test_create_order_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.create_order(
        cargoes: [
          {
            height: 1,
            length: 1,
            price: 0,
            productValues: [{currency: :RUB, name: "name", price: 0, quantity: 1}],
            senderCargoId: "senderCargoId",
            weight: 1,
            width: 1
          }
        ],
        client: {name: "name", phone: "+79001234567"},
        cost: {assessedValue: 0, paymentCurrency: :RUB, price: 0},
        receiver: {},
        sender_order_id: "senderOrderId",
        warehouse: {id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}
      )

    assert_pattern do
      response => DeliveryFivePostClient::API::V1::OrderCreateResponse
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo]),
        execution_status: DeliveryFivePostClient::API::V1::ExecutionStatus,
        order_id: String,
        sender_order_id: String,
        status: String,
        is_duplicate: DeliveryFivePostClient::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delivery_params
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.delivery_params

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse
    end

    assert_pattern do
      response => {
        zones: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone])
      }
    end
  end

  def test_delivery_to_address_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.delivery_to_address(
        delivery_address: {
          city: "city",
          country: "country",
          house: "house",
          region: "region",
          street: "street",
          zipCode: "zipCode"
        },
        dimensions: {height: 0, length: 0, width: 0},
        sender_location_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        weight: 0
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse
    end

    assert_pattern do
      response => {
        currency: DeliveryFivePostClient::API::V1::Currency,
        delivery_days: Integer,
        total_cost: Float,
        zone_id: String | nil
      }
    end
  end

  def test_get_actual_cargo_size_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.get_actual_cargo_size(
        cargo_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeResponse
    end

    assert_pattern do
      response => {
        actual_height: Float,
        actual_length: Float,
        actual_weight: Float,
        actual_width: Float,
        cargo_id: String
      }
    end
  end

  def test_get_cargo_status
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.get_cargo_status

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse
    end

    assert_pattern do
      response => {
        cargoes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo])
      }
    end
  end

  def test_get_order_history_mass
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.get_order_history_mass

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse
    end

    assert_pattern do
      response => {
        orders: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse::Order])
      }
    end
  end

  def test_get_order_status
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.get_order_status

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusResponse
    end

    assert_pattern do
      response => {
        orders: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusResponse::Order])
      }
    end
  end

  def test_get_receipts_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.get_receipts(
        order_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse
    end

    assert_pattern do
      response => {
        receipts: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt])
      }
    end
  end

  def test_get_receiver_locations_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.get_receiver_locations(
        order_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse
    end

    assert_pattern do
      response => {
        redirections: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection])
      }
    end
  end

  def test_get_security_code_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.get_security_code(
        order_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse
    end

    assert_pattern do
      response => {
        security_codes: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse::SecurityCode])
      }
    end
  end

  def test_order_labels_required_params
    skip("Mock server tests are disabled")

    response =
      @delivery_five_post_client.api.v1.partners.order_labels(
        order_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"]
      )

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse
    end

    assert_pattern do
      response => {
        labels: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label])
      }
    end
  end

  def test_pickup_points
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.pickup_points

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsResponse
    end

    assert_pattern do
      response => {
        pickup_points: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint])
      }
    end
  end

  def test_retrieve_warehouse_all
    skip("Mock server tests are disabled")

    response = @delivery_five_post_client.api.v1.partners.retrieve_warehouse_all

    assert_pattern do
      response => DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllResponse
    end

    assert_pattern do
      response => {
        warehouses: ^(DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::WarehouseInfo])
      }
    end
  end
end
