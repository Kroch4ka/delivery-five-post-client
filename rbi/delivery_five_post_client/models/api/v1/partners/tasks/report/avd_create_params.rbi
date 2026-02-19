# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Tasks
            module Report
              class AvdCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
                extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
                include DeliveryFivePostClient::Internal::Type::RequestParameters

                OrHash =
                  T.type_alias do
                    T.any(
                      DeliveryFivePostClient::API::V1::Partners::Tasks::Report::AvdCreateParams,
                      DeliveryFivePostClient::Internal::AnyHash
                    )
                  end

                # Дата начала периода / Start date
                sig { returns(Date) }
                attr_accessor :date_from

                # Дата окончания периода / End date
                sig { returns(Date) }
                attr_accessor :date_to

                sig do
                  params(
                    date_from: Date,
                    date_to: Date,
                    request_options:
                      DeliveryFivePostClient::RequestOptions::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Дата начала периода / Start date
                  date_from:,
                  # Дата окончания периода / End date
                  date_to:,
                  request_options: {}
                )
                end

                sig do
                  override.returns(
                    {
                      date_from: Date,
                      date_to: Date,
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
