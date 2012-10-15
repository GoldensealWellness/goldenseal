Deface::Override.new(:virtual_path => 'spree/admin/users/_form',
                     :name => 'add_names_to_user_admin_edit',
                     :insert_top => '[data-hook="admin_user_form_fields"]',
                     :text => %q{ 
   <%= f.field_container :f_name do %>
     <%= f.label :f_name, t(:First_Name) %><br />
     <%= f.text_field :f_name %>
     <%= error_message_on :user, :f_name %>
   <% end %>
   
   <%= f.field_container :l_name do %>
     <%= f.label :l_name, t(:Last_Name) %><br />
     <%= f.text_field :l_name %>
     <%= error_message_on :user, :l_name %>
   <% end %>
  }
)