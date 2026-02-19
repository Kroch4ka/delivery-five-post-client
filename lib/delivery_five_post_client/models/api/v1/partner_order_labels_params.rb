# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#order_labels
        class PartnerOrderLabelsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute order_ids
          #   Массив UUID заказов / Array of order UUIDs
          #
          #   @return [Array<String>]
          required :order_ids, DeliveryFivePostClient::Internal::Type::ArrayOf[String], api_name: :orderIds

          # @!attribute format_
          #   Формат этикетки / Label format
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsParams::Format, nil]
          optional :format_,
                   enum: -> { DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams::Format },
                   api_name: :format

          # @!attribute unified
          #   Объединить все этикетки в один файл / Unify all labels in one file
          #
          #   @return [Boolean, nil]
          optional :unified, DeliveryFivePostClient::Internal::Type::Boolean

          # @!method initialize(order_ids:, format_: nil, unified: nil, request_options: {})
          #   @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          #   @param format_ [Symbol, DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsParams::Format] Формат этикетки / Label format
          #
          #   @param unified [Boolean] Объединить все этикетки в один файл / Unify all labels in one file
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]

          # Формат этикетки / Label format
          module Format
            extend DeliveryFivePostClient::Internal::Type::Enum

            PDF = :PDF
            ZPL = :ZPL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
