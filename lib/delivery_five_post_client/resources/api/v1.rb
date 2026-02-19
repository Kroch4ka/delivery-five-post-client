# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        # @return [DeliveryFivePostClient::Resources::API::V1::GetLabelStatuses]
        attr_reader :get_label_statuses

        # @return [DeliveryFivePostClient::Resources::API::V1::Partners]
        attr_reader :partners

        # @return [DeliveryFivePostClient::Resources::API::V1::Tariff]
        attr_reader :tariff

        # @api private
        #
        # @param client [DeliveryFivePostClient::Client]
        def initialize(client:)
          @client = client
          @get_label_statuses = DeliveryFivePostClient::Resources::API::V1::GetLabelStatuses.new(client: client)
          @partners = DeliveryFivePostClient::Resources::API::V1::Partners.new(client: client)
          @tariff = DeliveryFivePostClient::Resources::API::V1::Tariff.new(client: client)
        end
      end
    end
  end
end
