# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Tasks
            class Report
              class Avds
                # Создание задачи на формирование отчета о переводе денежных средств партнеру /
                # Create task for AVDS report generation
                sig do
                  params(
                    date_from: Date,
                    date_to: Date,
                    request_options:
                      DeliveryFivePostClient::RequestOptions::OrHash
                  ).returns(
                    DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdCreateResponse
                  )
                end
                def create(
                  # Дата начала периода / Start date
                  date_from:,
                  # Дата окончания периода / End date
                  date_to:,
                  request_options: {}
                )
                end

                # Получение сформированного отчета (Excel файл). Срок хранения: 30 дней / Get
                # generated report (Excel file). Storage period: 30 days
                sig do
                  params(
                    task_id: String,
                    request_options:
                      DeliveryFivePostClient::RequestOptions::OrHash
                  ).returns(StringIO)
                end
                def result(
                  # UUID в формате v4 / UUID in v4 format
                  task_id:,
                  request_options: {}
                )
                end

                # Получение статуса задачи формирования отчета / Get report task status
                sig do
                  params(
                    task_id: String,
                    request_options:
                      DeliveryFivePostClient::RequestOptions::OrHash
                  ).returns(
                    DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusResponse
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
  end
end
