module Spree
  class Slide < ActiveRecord::Base

    belongs_to :heroable, polymorphic: true
    has_one :image, -> { order(:position) }, as: :viewable, dependent: :destroy, class_name: "Spree::Image"
    accepts_nested_attributes_for :image, allow_destroy: true

    before_save :set_sort_order

    default_scope -> { order('sort_order asc') }


    private

      def set_sort_order
        sort_order = heroable.slides.size if sort_order.blank?
      end

  end
end