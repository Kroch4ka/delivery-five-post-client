# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class PartnerSupplyUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::PartnerSupplyUpdateParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Грузоместа в поставке / Cargoes
            sig do
              returns(
                T.nilable(
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo
                  ]
                )
              )
            end
            attr_reader :cargoes

            sig do
              params(
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo::OrHash
                  ]
              ).void
            end
            attr_writer :cargoes

            # Плановая дата поставки / Planned date
            sig { returns(T.nilable(Date)) }
            attr_reader :planned_date

            sig { params(planned_date: Date).void }
            attr_writer :planned_date

            sig do
              params(
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo::OrHash
                  ],
                planned_date: Date,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Грузоместа в поставке / Cargoes
              cargoes: nil,
              # Плановая дата поставки / Planned date
              planned_date: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  cargoes:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::SupplyCargo
                    ],
                  planned_date: Date,
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
