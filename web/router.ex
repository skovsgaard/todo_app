defmodule TodoApp.Router do
  use Phoenix.Router

  scope alias: TodoApp do
    get "/", PageController, :index, as: :pages

    resources "/entries", EntryController
  end
end
