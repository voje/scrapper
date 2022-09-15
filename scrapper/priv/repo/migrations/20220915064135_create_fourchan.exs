defmodule Scrapper.Repo.Migrations.CreateFourchan do
  use Ecto.Migration

  def change do

    create table(:fourchan_board) do
      add :url, :string
      add :name, :string
      add :board_id, :int
    end

    create table(:fourchan_thread) do
      add :thread_id, :int
      add :name, :string
      add :date, :int
      add :board_id, :int
    end

    create table(:fourchan_post) do
      add :post_id, :int
      add :text, :string
      add :reply_to, {:array, :int}
      add :date, :int
      add :thread_id, :int
    end

  end
end
