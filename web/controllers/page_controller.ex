defmodule TodoApp.PageController do
  use Phoenix.Controller
  alias TodoApp.Router

  def index(conn, _params) do
    redirect conn, Router.entry_path(:index)
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
