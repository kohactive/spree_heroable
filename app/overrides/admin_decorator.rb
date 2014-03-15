Deface::Override.new(virtual_path: "spree/admin/shared/_product_tabs",
                     name: "add_slides_tab",
                     insert_bottom: "[data-hook='admin_product_tabs']",
                     text: "<%= content_tag :li, :class => ('active' if current == 'Product Slides') do %><%= link_to_with_icon 'icon-edit', Spree.t(:product_slides), admin_product_slides_path(@product) %><% end %>",
                     disabled: false)


Deface::Override.new(virtual_path: "spree/admin/taxons/_form",
                     name: "admin_taxon_slides_form",
                     insert_after: "[data-hook='admin_inside_taxon_form']",
                     partial: "spree/admin/taxons/slides",
                     disabled: false)
