# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class SupplyInfo < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::SupplyInfo,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Грузоместа / Cargoes
            sig do
              returns(
                T::Array[DeliveryFivePostClient::API::V1::Partners::SupplyCargo]
              )
            end
            attr_accessor :cargoes

            # Дата создания / Created date
            sig { returns(Time) }
            attr_accessor :created_date

            # Плановая дата / Planned date
            sig { returns(Date) }
            attr_accessor :planned_date

            # Статус поставки / Supply status
            sig do
              returns(
                DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol
              )
            end
            attr_accessor :status

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :supply_id

            # Тип поставки / Supply type
            sig do
              returns(
                DeliveryFivePostClient::API::V1::Partners::SupplyType::TaggedSymbol
              )
            end
            attr_accessor :supply_type

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :warehouse_id

            # Фактическая дата / Actual date
            sig { returns(T.nilable(Date)) }
            attr_reader :actual_date

            sig { params(actual_date: Date).void }
            attr_writer :actual_date

            # Дата обновления / Updated date
            sig { returns(T.nilable(Time)) }
            attr_reader :updated_date

            sig { params(updated_date: Time).void }
            attr_writer :updated_date

            # Информация о поставке / Supply info
            sig do
              params(
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo::OrHash
                  ],
                created_date: Time,
                planned_date: Date,
                status:
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol,
                supply_id: String,
                supply_type:
                  DeliveryFivePostClient::API::V1::Partners::SupplyType::OrSymbol,
                warehouse_id: String,
                actual_date: Date,
                updated_date: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Грузоместа / Cargoes
              cargoes:,
              # Дата создания / Created date
              created_date:,
              # Плановая дата / Planned date
              planned_date:,
              # Статус поставки / Supply status
              status:,
              # UUID в формате v4 / UUID in v4 format
              supply_id:,
              # Тип поставки / Supply type
              supply_type:,
              # UUID в формате v4 / UUID in v4 format
              warehouse_id:,
              # Фактическая дата / Actual date
              actual_date: nil,
              # Дата обновления / Updated date
              updated_date: nil
            )
            end

            sig do
              override.returns(
                {
                  cargoes:
                    T::Array[
                      DeliveryFivePostClient::API::V1::Partners::SupplyCargo
                    ],
                  created_date: Time,
                  planned_date: Date,
                  status:
                    DeliveryFivePostClient::API::V1::Partners::SupplyStatus::TaggedSymbol,
                  supply_id: String,
                  supply_type:
                    DeliveryFivePostClient::API::V1::Partners::SupplyType::TaggedSymbol,
                  warehouse_id: String,
                  actual_date: Date,
                  updated_date: Time
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
