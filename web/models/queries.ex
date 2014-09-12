defmodule TodoApp.Queries do
  import Ecto.Query
  alias TodoApp.Repo
  alias TodoApp.Entry

  def get_entries do
    query = from entry in Entry,
            select: entry
    Repo.all(query)
  end

  def get_by_id(id) do
    num_id = String.to_integer(id)
    query = from entry in Entry,
            where: entry.id == ^num_id,
            select: entry
    Repo.all(query) |> List.first
  end
end
