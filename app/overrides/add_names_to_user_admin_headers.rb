Deface::Override.new(:virtual_path => 'spree/admin/users/index',
                     :name => 'add_names_to_user_admin_headers',
                     :replace => '[data-hook="admin_users_index_headers"]',
                     :text => %q{ 
<th>
  <%= sort_link @search,:f_name, t(:First_Name), {}, {:title => 'users_f_name_title'} %>
</th>
<th>
  <%= sort_link @search,:l_name, t(:Last_Name), {}, {:title => 'users_l_name_title'} %>
</th>
<th><%= sort_link @search,:created_at, t(:Signed_up), {}, {:title => 'users_email_title'} %></th>
<th><%= sort_link @search,:email, t(:Email), {}, {:title => 'users_email_title'} %></th>
<th data-hook="admin_users_index_header_actions"></th>
  }
)