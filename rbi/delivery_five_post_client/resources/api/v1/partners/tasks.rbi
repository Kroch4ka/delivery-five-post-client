# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Tasks
            sig do
              returns(
                DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report
              )
            end
            attr_reader :report

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
