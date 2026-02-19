# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_receipts
        class PartnerGetReceiptsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute receipts
          #   Массив чеков по заказам / Array of order receipts
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt>]
          required :receipts,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt] }

          # @!method initialize(receipts:)
          #   Ответ с чеками / Get receipts response
          #
          #   @param receipts [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt>] Массив чеков по заказам / Array of order receipts

          class Receipt < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute receipts
            #   Массив чеков / Array of receipts
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt>]
            required :receipts,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt] }

            # @!method initialize(order_id:, receipts:)
            #   Чеки заказа / Order receipts
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param receipts [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt>] Массив чеков / Array of receipts

            class Receipt < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute fiscal_data
              #   Фискальные данные чека / Fiscal data of receipt
              #
              #   @return [DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData]
              required :fiscal_data,
                       -> { DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData },
                       api_name: :fiscalData

              # @!attribute type
              #   Тип чека / Receipt type
              #
              #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type]
              required :type,
                       enum: -> { DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type }

              # @!attribute url
              #   URL для скачивания чека / Receipt download URL
              #
              #   @return [String]
              required :url, String

              # @!method initialize(fiscal_data:, type:, url:)
              #   Информация о чеке / Receipt information
              #
              #   @param fiscal_data [DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData] Фискальные данные чека / Fiscal data of receipt
              #
              #   @param type [Symbol, DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type] Тип чека / Receipt type
              #
              #   @param url [String] URL для скачивания чека / Receipt download URL

              # @see DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt#fiscal_data
              class FiscalData < DeliveryFivePostClient::Internal::Type::BaseModel
                # @!attribute fiscal_document_number
                #   Номер фискального документа / Fiscal document number
                #
                #   @return [String]
                required :fiscal_document_number, String, api_name: :fiscalDocumentNumber

                # @!attribute fiscal_sign
                #   Фискальный признак / Fiscal sign
                #
                #   @return [String]
                required :fiscal_sign, String, api_name: :fiscalSign

                # @!attribute fiscal_storage_number
                #   Номер фискального накопителя / Fiscal storage number
                #
                #   @return [String]
                required :fiscal_storage_number, String, api_name: :fiscalStorageNumber

                # @!method initialize(fiscal_document_number:, fiscal_sign:, fiscal_storage_number:)
                #   Фискальные данные чека / Fiscal data of receipt
                #
                #   @param fiscal_document_number [String] Номер фискального документа / Fiscal document number
                #
                #   @param fiscal_sign [String] Фискальный признак / Fiscal sign
                #
                #   @param fiscal_storage_number [String] Номер фискального накопителя / Fiscal storage number
              end

              # Тип чека / Receipt type
              #
              # @see DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt#type
              module Type
                extend DeliveryFivePostClient::Internal::Type::Enum

                PAYMENT = :PAYMENT
                REFUND = :REFUND

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
