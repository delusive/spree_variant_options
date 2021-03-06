Deface::Override.new(:virtual_path   => "spree/products/_cart_form",
                     :name           => "spree_variant_options",
                     :replace        => "#product-variants",
                     :partial        => "spree/products/variant_options",
                     :disabled       => false)

Deface::Override.new(:virtual_path   => "spree/admin/option_types/edit",
                     :name           => "admin_option_value_table_headers",
                     :replace        => "thead[data-hook=option_header]",
                     :partial        => "spree/admin/option_values/table_header",
                     :disabled       => false)

Deface::Override.new(:virtual_path   => "spree/admin/option_types/edit",
                     :name           => "admin_option_value_table_empty_colspan",
                     :set_attributes => "tr[data-hook=option_none] td",
                     :attributes     => { :colspan => 5 },
                     :disabled       => false)

# Image upload for many variants on admin area
Deface::Override.new(:virtual_path   => "spree/admin/images/form",
                     :name           => "admin_multiple_image_upload_for_variant_options",
                     :replace        => "[data-hook=admin_image_form_fields]",
                     :partial        => "spree/admin/images/form",
                     :disabled       => false)
