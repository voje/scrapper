defmodule Scrapper.Schema.Fourchan.Post do
  use Ecto.Schema

  schema "fourchan_post" do
    field :post_id, :integer
    field :text, :string
    field :reply_to, {:array, :integer}
    field :date, :integer
    field :thread_id, :integer
  end
end
