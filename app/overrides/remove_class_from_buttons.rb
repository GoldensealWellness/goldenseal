Deface::Override.new(:virtual_path => 'spree/orders/edit',
                      :name => 'remove_class_from_buttons',
                      :replace => "[data-hook='cart_buttons']",
                      :text => "<div id='cart_buttons'>
                                  <%= button_tag :class => 'primary', :id => 'update-button' do %>
                                    <%= t(:update) %>
                                  <% end %>
                                  <%= link_to t(:checkout), checkout_path, :class => 'button checkout primary', :id => 'checkout-link' %>
                                 </div>"
                      )
