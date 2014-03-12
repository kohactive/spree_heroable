Spree::Product.class_eval do

  has_many :slides, as: :heroable
  accepts_nested_attributes_for :slides, allow_destroy: true

end