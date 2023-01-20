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

■習得レベルの選択肢にlevelsテーブルの値をとってくる

<%= f.label :skill_name, "習得レベル" %>
<%= f.collection_select :level_id, Level.all, :id, :rank, class: 'form-select' %>

■メモ
migrationファイルひとつdb:migrateできていない
SQLite3は設定しなくてもuniqueになっている？？

User.create(name: "test user", email: "test.user@example.com", password: "000000", introduction: "自己紹介")

<%= f.label :level, "習得レベル" %>
<%= f.number_field :level, class: 'form-control' %>
