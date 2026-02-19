# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class ExtendStorageDays
            # Продление срока хранения / Extend storage period
            sig do
              params(
                days: Integer,
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::ExtendStorageDayExtendStorageDaysResponse
              )
            end
            def extend_storage_days(
              # Количество дней для продления / Number of days to extend
              days:,
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            # Статус операции продления / Storage extension status
            sig do
              params(
                task_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::API::V1::Partners::TaskStatusResponse
              )
            end
            def status(
              # UUID в формате v4 / UUID in v4 format
              task_id:,
              request_options: {}
            )
            end

            # @api private
            sig do
              params(client: DeliveryFivePostClient::Client).returns(
                T.attached_class
              )
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
