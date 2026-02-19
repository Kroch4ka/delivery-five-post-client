# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Tasks
            module Report
              class AvdStatusResponse < DeliveryFivePostClient::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusResponse,
                      DeliveryFivePostClient::Internal::AnyHash
                    )
                  end

                # Статус задачи / Task status
                sig do
                  returns(
                    DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol
                  )
                end
                attr_accessor :status

                # UUID в формате v4 / UUID in v4 format
                sig { returns(String) }
                attr_accessor :task_id

                # Сообщение об ошибке (если status = ERROR) / Error message
                sig { returns(T.nilable(String)) }
                attr_reader :error_message

                sig { params(error_message: String).void }
                attr_writer :error_message

                # Статус задачи отчета / Report task status
                sig do
                  params(
                    status:
                      DeliveryFivePostClient::API::V1::Partners::TaskStatus::OrSymbol,
                    task_id: String,
                    error_message: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Статус задачи / Task status
                  status:,
                  # UUID в формате v4 / UUID in v4 format
                  task_id:,
                  # Сообщение об ошибке (если status = ERROR) / Error message
                  error_message: nil
                )
                end

                sig do
                  override.returns(
                    {
                      status:
                        DeliveryFivePostClient::API::V1::Partners::TaskStatus::TaggedSymbol,
                      task_id: String,
                      error_message: String
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
