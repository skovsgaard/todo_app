defmodule TodoApp.Queries do
  import Ecto.Query
  alias TodoApp.Repo

  def get_entries do
    query = from entry in TodoApp.Entry,
            select: entry
    Repo.all(query)
  end
end
