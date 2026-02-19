# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class ExtendStorageDays
            # Продление срока хранения / Extend storage period
            #
            # @overload extend_storage_days(days:, order_id:, request_options: {})
            #
            # @param days [Integer] Количество дней для продления / Number of days to extend
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayExtendStorageDaysResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayExtendStorageDaysParams
            def extend_storage_days(params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::ExtendStorageDayExtendStorageDaysParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/extendStorageDays",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayExtendStorageDaysResponse,
                options: options
              )
            end

            # Статус операции продления / Storage extension status
            #
            # @overload status(task_id:, request_options: {})
            #
            # @param task_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::TaskStatusResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayStatusParams
            def status(params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::ExtendStorageDayStatusParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/extendStorageDays/status",
                body: parsed,
                model: DeliveryFivePostClient::API::V1::Partners::TaskStatusResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [DeliveryFivePostClient::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
