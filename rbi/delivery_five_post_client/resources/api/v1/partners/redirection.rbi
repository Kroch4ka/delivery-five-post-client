# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Redirection
            # Переадресация заказа / Redirect order
            sig do
              params(
                new_location_id: String,
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::RedirectionCreateResponse
              )
            end
            def create(
              # UUID в формате v4 / UUID in v4 format
              new_location_id:,
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            # Статус переадресации / Redirection status
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
