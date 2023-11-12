<%= form_with(model: user, url: login_path) do |form| %>
  <% if user.errors.any? %>
    <div style="color: red">
      <h2><%= pluralize(user.errors.count, "error") %> prohibited this user from being saved:</h2>

      <ul>
        <% user.errors.each do |error| %>
          <li><%= error.full_message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <div>
    <%= form.label :name, class: 'form-control' %>
    <%= form.text_field :name %>
  </div>

  <div>
    <%= form.label :password, class: "form-control" %>
    <%= form.text_field :password %>
  </div>

  <div>
    <%= form.submit 'Sign up', class: 'btn btn-primary' %>
  </div>
<% end %>