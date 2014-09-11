defmodule TodoApp.EntryController do
  use Phoenix.Controller
  alias TodoApp.Router

  def index(conn, _params) do
    entries = TodoApp.Queries.get_entries
    render conn, "index", entries: entries
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    entry = %TodoApp.Entry{title: params["title"], due_date: params["due_date"], content: params["content"]} 
    TodoApp.Repo.insert(entry)
    redirect conn, Router.entry_path(:index)
  end
end
