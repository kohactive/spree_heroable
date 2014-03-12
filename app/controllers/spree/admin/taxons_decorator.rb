Spree::TaxonsController.class_eval do

  Spree::PermittedAttributes.taxon_attributes << [slides_attributes: [:id, :title, :body, :sort_order, :_destroy, image_attributes: [:id, :attachment]]]

end