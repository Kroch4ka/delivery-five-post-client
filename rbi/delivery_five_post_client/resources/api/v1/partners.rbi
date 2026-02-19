# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays
            )
          end
          attr_reader :extend_storage_days

          sig do
            returns(DeliveryFivePostClient::Resources::API::V1::Partners::Jwt)
          end
          attr_reader :jwt

          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::Orders
            )
          end
          attr_reader :orders

          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply
            )
          end
          attr_reader :partner_supply

          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::Redirection
            )
          end
          attr_reader :redirection

          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::Return
            )
          end
          attr_reader :return_

          sig do
            returns(DeliveryFivePostClient::Resources::API::V1::Partners::Tasks)
          end
          attr_reader :tasks

          sig do
            returns(
              DeliveryFivePostClient::Resources::API::V1::Partners::Warehouse
            )
          end
          attr_reader :warehouse

          # Срок хранения заказа / Order storage expiration
          sig do
            params(
              order_id: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerRetrieveResponse
            )
          end
          def retrieve(
            # UUID в формате v4 / UUID in v4 format
            order_id,
            request_options: {}
          )
          end

          # Создание одноместного заказа (УСТАРЕЛ) / Create single-cargo order (DEPRECATED)
          sig do
            params(
              cargoes: T::Array[DeliveryFivePostClient::API::V1::Cargo::OrHash],
              client: DeliveryFivePostClient::API::V1::ClientInfo::OrHash,
              cost: DeliveryFivePostClient::API::V1::OrderCost::OrHash,
              receiver:
                DeliveryFivePostClient::API::V1::ReceiverLocation::OrHash,
              sender_order_id: String,
              warehouse:
                DeliveryFivePostClient::API::V1::OrderCreate::Warehouse::OrHash,
              brand_name: String,
              client_order_id: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(DeliveryFivePostClient::API::V1::OrderCreateResponse)
          end
          def create_order(
            # Грузоместа / Cargoes
            cargoes:,
            # Информация о клиенте / Client information
            client:,
            # Стоимостные параметры заказа / Order cost parameters
            cost:,
            # Точка получения / Receiver location
            receiver:,
            # ID заказа партнера / Partner order ID
            sender_order_id:,
            # Ссылка на склад / Warehouse reference
            warehouse:,
            # Название бренда отправителя / Sender brand name
            brand_name: nil,
            # ID заказа клиента / Client order ID
            client_order_id: nil,
            request_options: {}
          )
          end

          # Получение географии курьерской доставки до двери / Get courier delivery
          # geography
          sig do
            params(
              city: String,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse
            )
          end
          def delivery_params(
            # Город / City
            city: nil,
            # Регион / Region
            region: nil,
            request_options: {}
          )
          end

          # Расчет итоговой стоимости доставки до адреса / Calculate final delivery cost to
          # address
          sig do
            params(
              delivery_address:
                DeliveryFivePostClient::API::V1::Address::OrHash,
              dimensions:
                DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions::OrHash,
              sender_location_id: String,
              weight: Float,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse
            )
          end
          def delivery_to_address(
            # Адрес / Address
            delivery_address:,
            # Габариты / Dimensions
            dimensions:,
            # UUID в формате v4 / UUID in v4 format
            sender_location_id:,
            # Вес грузоместа (кг) / Weight
            weight:,
            request_options: {}
          )
          end

          # Получение актуальных ВГХ / Get actual dimensions
          sig do
            params(
              cargo_id: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeResponse
            )
          end
          def get_actual_cargo_size(
            # UUID в формате v4 / UUID in v4 format
            cargo_id:,
            request_options: {}
          )
          end

          # Получение статуса грузомест / Get cargo status
          sig do
            params(
              cargo_ids: T::Array[String],
              sender_cargo_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse
            )
          end
          def get_cargo_status(
            # Массив UUID грузомест / Array of cargo UUIDs
            cargo_ids: nil,
            # Массив ID грузомест партнера / Array of partner cargo IDs
            sender_cargo_ids: nil,
            request_options: {}
          )
          end

          # Получение истории статусов заказа / Get order status history
          sig do
            params(
              order_ids: T::Array[String],
              sender_order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse
            )
          end
          def get_order_history_mass(
            # Массив UUID заказов / Array of order UUIDs
            order_ids: nil,
            # Массив ID заказов партнера / Array of partner order IDs
            sender_order_ids: nil,
            request_options: {}
          )
          end

          # Получение актуального статуса заказов / Get current order status
          sig do
            params(
              order_ids: T::Array[String],
              sender_order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusResponse
            )
          end
          def get_order_status(
            # Массив UUID заказов / Array of order UUIDs
            order_ids: nil,
            # Массив ID заказов партнера / Array of partner order IDs
            sender_order_ids: nil,
            request_options: {}
          )
          end

          # Получение чеков / Get receipts
          sig do
            params(
              order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse
            )
          end
          def get_receipts(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            request_options: {}
          )
          end

          # Информация о переадресации / Redirection information
          sig do
            params(
              order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse
            )
          end
          def get_receiver_locations(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            request_options: {}
          )
          end

          # Получение кода выдачи / Get security code
          sig do
            params(
              order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse
            )
          end
          def get_security_code(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            request_options: {}
          )
          end

          # Получение этикеток / Get labels
          sig do
            params(
              order_ids: T::Array[String],
              format_:
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::OrSymbol,
              unified: T::Boolean,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse
            )
          end
          def order_labels(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            # Формат этикетки / Label format
            format_: nil,
            # Объединить все этикетки в один файл / Unify all labels in one file
            unified: nil,
            request_options: {}
          )
          end

          # Получение списка точек выдачи / Get pickup points list
          sig do
            params(
              active: T::Boolean,
              city: String,
              mdm_code: String,
              ready: T::Boolean,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsResponse
            )
          end
          def pickup_points(
            # Фильтр по активности / Filter by active status
            active: nil,
            # Фильтр по городу / Filter by city
            city: nil,
            # Поиск по MDM коду / Search by MDM code
            mdm_code: nil,
            # Фильтр по готовности / Filter by ready status
            ready: nil,
            # Фильтр по региону / Filter by region
            region: nil,
            request_options: {}
          )
          end

          # Получение списка всех складов / Get list of all warehouses
          sig do
            params(
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(
              DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllResponse
            )
          end
          def retrieve_warehouse_all(request_options: {})
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
