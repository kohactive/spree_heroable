module Spree
  module Admin
    class SlidesController < ResourceController

      before_filter :load_product

      respond_to :html

      helper 'spree/products'

      def index
      end


      private

        # Load the product as a before filter. Redirect to the referer if no product is found
        def load_product
          @product = Spree::Product.find_by_permalink(params[:product_id])
          redirect_to request.referer unless @product.present?
        end

    end
  end
end