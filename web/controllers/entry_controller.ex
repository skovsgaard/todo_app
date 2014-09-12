defmodule TodoApp.EntryController do
  use Phoenix.Controller
  alias TodoApp.Router
  alias TodoApp.Queries
  alias TodoApp.Repo
  alias TodoApp.Entry

  def index(conn, _params) do
    entries = Queries.get_entries
    render conn, "index", entries: entries
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def show(conn, params) do
    entry = Queries.get_by_id(params["id"])
    render conn, "entry", entry: entry
  end

  def edit(conn, params) do
    entry = Queries.get_by_id(params["id"])
    render conn, "edit", entry: entry
  end

  def create(conn, params) do
    entry = %Entry{title: params["title"], due_date: params["due_date"], content: params["content"]} 
    Repo.insert(entry)
    redirect conn, Router.entry_path(:index)
  end

  def update(conn, params) do
    entry = Queries.get_by_id(params["id"])
    entry = %{entry | title: params["title"],
      due_date: params["due_date"],
      content: params["content"]}
    Repo.update(entry)
    redirect conn, Router.entry_path(:index)
  end

  def destroy(conn, params) do
    entry = Queries.get_by_id(params["id"])
    Repo.delete(entry)
    redirect conn, Router.entry_path(:index)
  end
end
