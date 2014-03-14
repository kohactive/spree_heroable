Spree::Product.class_eval do

  has_many :slides, as: :heroable
  accepts_nested_attributes_for :slides, allow_destroy: true

  # Sometimes you only want one hero, here's a convenience method
  def slide
    slides.first rescue nil
  end

end