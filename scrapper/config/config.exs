import Config

config :scrapper, Scrapper.Repo,
  database: "elixirdb",
  username: "elixir",
  password: "elixir",
  hostname: "localhost"

config :scrapper, ecto_repos: [Scrapper.Repo]
