defmodule TodoApp.Entry do
  use Ecto.Model

  schema "entry" do
    field :title
    field :due_date
    field :content
  end
end
