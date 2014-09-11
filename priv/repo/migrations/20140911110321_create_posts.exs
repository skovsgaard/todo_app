defmodule TodoApp.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def up do
    "CREATE TABLE entry(id serial primary key, title text, due_date varchar(125), content text)"
  end

  def down do
    "DROP TABLE entry"
  end
end
