# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Tasks
            module Report
              # @see DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report::Avds#create
              class AvdCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
                extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
                include DeliveryFivePostClient::Internal::Type::RequestParameters

                # @!attribute date_from
                #   Дата начала периода / Start date
                #
                #   @return [Date]
                required :date_from, Date, api_name: :dateFrom

                # @!attribute date_to
                #   Дата окончания периода / End date
                #
                #   @return [Date]
                required :date_to, Date, api_name: :dateTo

                # @!method initialize(date_from:, date_to:, request_options: {})
                #   @param date_from [Date] Дата начала периода / Start date
                #
                #   @param date_to [Date] Дата окончания периода / End date
                #
                #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
              end
            end
          end
        end
      end
    end
  end
end
