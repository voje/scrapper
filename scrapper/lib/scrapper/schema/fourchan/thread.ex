defmodule Scrapper.Schema.Fourchan.Thread do
  use Ecto.Schema

  schema "fourchan_thread" do
    field :thread_id, :integer
    field :name, :string
    field :date, :integer
    field :board_id, :integer
  end
end
