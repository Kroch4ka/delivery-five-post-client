# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Tasks
            module Report
              class AvdStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
                extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
                include DeliveryFivePostClient::Internal::Type::RequestParameters

                OrHash =
                  T.type_alias do
                    T.any(
                      DeliveryFivePostClient::API::V1::Partners::Tasks::Report::AvdStatusParams,
                      DeliveryFivePostClient::Internal::AnyHash
                    )
                  end

                # UUID в формате v4 / UUID in v4 format
                sig { returns(String) }
                attr_accessor :task_id

                sig do
                  params(
                    task_id: String,
                    request_options:
                      DeliveryFivePostClient::RequestOptions::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  # UUID в формате v4 / UUID in v4 format
                  task_id:,
                  request_options: {}
                )
                end

                sig do
                  override.returns(
                    {
                      task_id: String,
                      request_options: DeliveryFivePostClient::RequestOptions
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
