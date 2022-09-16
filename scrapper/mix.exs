defmodule Scrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :scrapper,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Scrapper.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},

      {:crawly, "~> 0.14.0"},
      {:floki, "~> 0.33.0"},
    ]
  end
end
