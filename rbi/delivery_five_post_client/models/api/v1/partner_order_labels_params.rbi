# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerOrderLabelsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив UUID заказов / Array of order UUIDs
          sig { returns(T::Array[String]) }
          attr_accessor :order_ids

          # Формат этикетки / Label format
          sig do
            returns(
              T.nilable(
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::OrSymbol
              )
            )
          end
          attr_reader :format_

          sig do
            params(
              format_:
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::OrSymbol
            ).void
          end
          attr_writer :format_

          # Объединить все этикетки в один файл / Unify all labels in one file
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :unified

          sig { params(unified: T::Boolean).void }
          attr_writer :unified

          sig do
            params(
              order_ids: T::Array[String],
              format_:
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::OrSymbol,
              unified: T::Boolean,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив UUID заказов / Array of order UUIDs
            order_ids:,
            # Формат этикетки / Label format
            format_: nil,
            # Объединить все этикетки в один файл / Unify all labels in one file
            unified: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                order_ids: T::Array[String],
                format_:
                  DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::OrSymbol,
                unified: T::Boolean,
                request_options: DeliveryFivePostClient::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Формат этикетки / Label format
          module Format
            extend DeliveryFivePostClient::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PDF =
              T.let(
                :PDF,
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::TaggedSymbol
              )
            ZPL =
              T.let(
                :ZPL,
                DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format::TaggedSymbol
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
