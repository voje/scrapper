defmodule Scrapper.Schema.Fourchan.Board do
  use Ecto.Schema

  schema "fourchan_board" do
    field :url, :string
    field :name, :string
    field :board_id, :integer
  end
end
