Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'tweak_product_list_item',
                     :replace => '[data-hook="products_list_item"]',
                     :text => %q{ 
<li id="product_<%= product.id %>"   
  data-hook="products_list_item">
  <%= link_to(product, :class => 'info') do %>
    <%= product.name %>
    <span class="price selling">
      <%= number_to_currency product.price %>
    </span>
    <%= form_for :order, :url => populate_orders_url do |f| %>
      <% if product.has_stock? || Spree::Config[:allow_backorders] %>
        <%= number_field_tag (product.has_variants? ? 
          :quantity : "variants[#{product.master.id}]"), 1, 
          :class => 'title', 
          :in => 1..product.on_hand,
          :style => "display: none" %>
        <%= button_tag :id => 'add-to-cart-button', :class => "prod_add_cart", :style => "position: absolute; bottom: 3px; right: 3px" do %>
            <%= " " %>
        <% end %>
      <% else %>
        <%= content_tag('strong', t(:out_of_stock)) %>
      <% end %>
    <% end %>
  <% end %>
  <%= link_to small_image(product), product %>
</li> })