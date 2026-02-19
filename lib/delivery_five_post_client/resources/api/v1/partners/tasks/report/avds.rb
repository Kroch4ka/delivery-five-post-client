# frozen_string_literal: true

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
                #
                # @overload create(date_from:, date_to:, request_options: {})
                #
                # @param date_from [Date] Дата начала периода / Start date
                #
                # @param date_to [Date] Дата окончания периода / End date
                #
                # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
                #
                # @return [DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdCreateResponse]
                #
                # @see DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdCreateParams
                def create(params)
                  parsed, options =
                    DeliveryFivePostClient::API::V1::Partners::Tasks::Report::AvdCreateParams.dump_request(params)
                  @client.request(
                    method: :post,
                    path: "api/v1/partners/tasks/report/avds",
                    body: parsed,
                    model: DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdCreateResponse,
                    options: options
                  )
                end

                # Получение сформированного отчета (Excel файл). Срок хранения: 30 дней / Get
                # generated report (Excel file). Storage period: 30 days
                #
                # @overload result(task_id:, request_options: {})
                #
                # @param task_id [String] UUID в формате v4 / UUID in v4 format
                #
                # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
                #
                # @return [StringIO]
                #
                # @see DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdResultParams
                def result(params)
                  parsed, options =
                    DeliveryFivePostClient::API::V1::Partners::Tasks::Report::AvdResultParams.dump_request(params)
                  @client.request(
                    method: :post,
                    path: "api/v1/partners/tasks/report/avds/result",
                    headers: {"accept" => "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"},
                    body: parsed,
                    model: StringIO,
                    options: options
                  )
                end

                # Получение статуса задачи формирования отчета / Get report task status
                #
                # @overload status(task_id:, request_options: {})
                #
                # @param task_id [String] UUID в формате v4 / UUID in v4 format
                #
                # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
                #
                # @return [DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusResponse]
                #
                # @see DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusParams
                def status(params)
                  parsed, options =
                    DeliveryFivePostClient::API::V1::Partners::Tasks::Report::AvdStatusParams.dump_request(params)
                  @client.request(
                    method: :post,
                    path: "api/v1/partners/tasks/report/avds/status",
                    body: parsed,
                    model: DeliveryFivePostClient::Models::API::V1::Partners::Tasks::Report::AvdStatusResponse,
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
  end
end
