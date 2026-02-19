# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class PartnerSupplyCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::PartnerSupplyCreateParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Грузоместа в поставке / Cargoes
            sig do
              returns(
                T::Array[DeliveryFivePostClient::API::V1::Partners::SupplyCargo]
              )
            end
            attr_accessor :cargoes

            # Плановая дата поставки / Planned date
            sig { returns(Date) }
            attr_accessor :planned_date

            # Тип поставки / Supply type
            sig do
              returns(
                DeliveryFivePostClient::API::V1::Partners::SupplyType::OrSymbol
              )
            end
            attr_accessor :supply_type

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :warehouse_id

            sig do
              params(
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo::OrHash
                  ],
                planned_date: Date,
                supply_type:
                  DeliveryFivePostClient::API::V1::Partners::SupplyType::OrSymbol,
                warehouse_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Грузоместа в поставке / Cargoes
              cargoes:,
              # Плановая дата поставки / Planned date
              planned_date:,
              # Тип поставки / Supply type
              supply_type:,
              # UUID в формате v4 / UUID in v4 format
              warehouse_id:,
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
                  supply_type:
                    DeliveryFivePostClient::API::V1::Partners::SupplyType::OrSymbol,
                  warehouse_id: String,
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
