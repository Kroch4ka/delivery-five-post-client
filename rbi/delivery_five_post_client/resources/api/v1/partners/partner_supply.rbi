# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class PartnerSupply
            # Создание поставки товаров на склад / Create supply to warehouse
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
              ).returns(DeliveryFivePostClient::API::V1::Partners::SupplyInfo)
            end
            def create(
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

            # Получение сведений о поставке / Get supply information
            sig do
              params(
                supply_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(DeliveryFivePostClient::API::V1::Partners::SupplyInfo)
            end
            def retrieve(
              # UUID в формате v4 / UUID in v4 format
              supply_id,
              request_options: {}
            )
            end

            # Обновление информации о поставке / Update supply information
            sig do
              params(
                supply_id: String,
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::SupplyCargo::OrHash
                  ],
                planned_date: Date,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(DeliveryFivePostClient::API::V1::Partners::SupplyInfo)
            end
            def update(
              # UUID в формате v4 / UUID in v4 format
              supply_id,
              # Грузоместа в поставке / Cargoes
              cargoes: nil,
              # Плановая дата поставки / Planned date
              planned_date: nil,
              request_options: {}
            )
            end

            # Отмена поставки / Cancel supply
            sig do
              params(
                supply_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteResponse
              )
            end
            def delete(
              # UUID в формате v4 / UUID in v4 format
              supply_id,
              request_options: {}
            )
            end

            # Получение списка поставок с фильтрацией / Get supplies list with filters
            sig do
              params(
                date_from: Date,
                date_to: Date,
                status:
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyResponse
              )
            end
            def retrieve_partner_supply(
              date_from: nil,
              date_to: nil,
              # Статус поставки / Supply status
              status: nil,
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
