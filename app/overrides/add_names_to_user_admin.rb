Deface::Override.new(:virtual_path => 'spree/admin/users/index',
                     :name => 'add_names_to_user_admin',
                     :insert_top => '[data-hook="admin_users_index_rows"]',
                     :text => %q{ 
  <td width="100px" class='user_email'>
    <%=link_to user.f_name, object_url(user) %>
  </td>
  
  <td width="100px" class='user_email'>
    <%=link_to user.l_name, object_url(user) %>
  </td>
  
  <td width="100px" class='user_email'>
    <%=link_to "#{time_ago_in_words(user.created_at)} ago", object_url(user) %>
  </td>
  }
)