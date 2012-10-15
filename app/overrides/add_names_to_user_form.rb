Deface::Override.new(:virtual_path => 'spree/user_registrations/new',
                     :name => 'add_names_to_user_form',
                     :insert_top => '[data-hook="signup_inside_form"]',
                     :text => %q{ 
 <p>
   <%= f.label :f_name, t(:first_name) %><br />
   <%= f.text_field :f_name, :class => 'title' %>
 </p>
 
 <p>
   <%= f.label :l_name, t(:last_name) %><br />
   <%= f.text_field :l_name, :class => 'title' %>
 </p>
 }
)