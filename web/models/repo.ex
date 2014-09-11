defmodule TodoApp.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://phoenix_user:phoenix@localhost/todo_app"
  end

  def priv do
    app_dir(:todo_app, "priv/repo")
  end
end
