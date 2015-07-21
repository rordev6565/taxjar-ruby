require 'taxjar/api/utils'
module Taxjar
  module API
    module Refund
      include Taxjar::API::Utils

      def list_refunds
      end

      def show_refund
      end

      def delete_order
      end

      def create_refund(options = {})
        perform_post_with_object("/v2/transactions/refunds", 'refund', options, Taxjar::Refund)
      end

      def update_refund(options = {})
        id = options.fetch(:transaction_id)
        perform_put_with_object("/v2/transactions/refunds/#{id}", 'refund', options, Taxjar::Refund)
      end
    end
  end
end
