<h1>Pirates</h1>

<ul>
<% @pirates.each do |pirate| %>
  <%= Name: pirate.name %>
  <%= Weight: pirate.weight %>
  <%= Height: pirate.height %>
<% end %>
</ul>
