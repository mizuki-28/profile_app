# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

■一時保管

<% if logged_in? %>
  <%= link_to "ログアウト", logout_path, data: { "turbo-method": :delete } %>
<% else %>
  <%= link_to "ログイン", login_path %>
<% end %>

def top
    @user = User.find(params[:id])
  end

user topのview
<% provide(:title, @user.name) %>

Level.create(rank: 1)
Level.find(5).update_column(:rank, 50)

          <%= f.label :skill_name, "習得レベル" %>
          <%= f.collection_select :level_id, Level.all, :id, :rank, class: 'form-select' %>

    <!-- # 
