# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetReceiptsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив чеков по заказам / Array of order receipts
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt
              ]
            )
          end
          attr_accessor :receipts

          # Ответ с чеками / Get receipts response
          sig do
            params(
              receipts:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив чеков по заказам / Array of order receipts
            receipts:
          )
          end

          sig do
            override.returns(
              {
                receipts:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt
                  ]
              }
            )
          end
          def to_hash
          end

          class Receipt < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # Массив чеков / Array of receipts
            sig do
              returns(
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt
                ]
              )
            end
            attr_accessor :receipts

            # Чеки заказа / Order receipts
            sig do
              params(
                order_id: String,
                receipts:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              # Массив чеков / Array of receipts
              receipts:
            )
            end

            sig do
              override.returns(
                {
                  order_id: String,
                  receipts:
                    T::Array[
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt
                    ]
                }
              )
            end
            def to_hash
            end

            class Receipt < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Фискальные данные чека / Fiscal data of receipt
              sig do
                returns(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData
                )
              end
              attr_reader :fiscal_data

              sig do
                params(
                  fiscal_data:
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData::OrHash
                ).void
              end
              attr_writer :fiscal_data

              # Тип чека / Receipt type
              sig do
                returns(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # URL для скачивания чека / Receipt download URL
              sig { returns(String) }
              attr_accessor :url

              # Информация о чеке / Receipt information
              sig do
                params(
                  fiscal_data:
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData::OrHash,
                  type:
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::OrSymbol,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Фискальные данные чека / Fiscal data of receipt
                fiscal_data:,
                # Тип чека / Receipt type
                type:,
                # URL для скачивания чека / Receipt download URL
                url:
              )
              end

              sig do
                override.returns(
                  {
                    fiscal_data:
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData,
                    type:
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::TaggedSymbol,
                    url: String
                  }
                )
              end
              def to_hash
              end

              class FiscalData < DeliveryFivePostClient::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::FiscalData,
                      DeliveryFivePostClient::Internal::AnyHash
                    )
                  end

                # Номер фискального документа / Fiscal document number
                sig { returns(String) }
                attr_accessor :fiscal_document_number

                # Фискальный признак / Fiscal sign
                sig { returns(String) }
                attr_accessor :fiscal_sign

                # Номер фискального накопителя / Fiscal storage number
                sig { returns(String) }
                attr_accessor :fiscal_storage_number

                # Фискальные данные чека / Fiscal data of receipt
                sig do
                  params(
                    fiscal_document_number: String,
                    fiscal_sign: String,
                    fiscal_storage_number: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Номер фискального документа / Fiscal document number
                  fiscal_document_number:,
                  # Фискальный признак / Fiscal sign
                  fiscal_sign:,
                  # Номер фискального накопителя / Fiscal storage number
                  fiscal_storage_number:
                )
                end

                sig do
                  override.returns(
                    {
                      fiscal_document_number: String,
                      fiscal_sign: String,
                      fiscal_storage_number: String
                    }
                  )
                end
                def to_hash
                end
              end

              # Тип чека / Receipt type
              module Type
                extend DeliveryFivePostClient::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYMENT =
                  T.let(
                    :PAYMENT,
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::TaggedSymbol
                  )
                REFUND =
                  T.let(
                    :REFUND,
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse::Receipt::Receipt::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
