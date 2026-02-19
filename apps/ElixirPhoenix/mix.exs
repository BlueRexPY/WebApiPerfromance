defmodule ElixirPhoenixApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_phoenix_api,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {ElixirPhoenixApi.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.7.14"},
      {:plug_cowboy, "~> 2.7"},
      {:jason, "~> 1.4"},
      {:postgrex, "~> 0.19"},
      {:ecto_sql, "~> 3.12"},
      {:mongodb_driver, "~> 1.4"}
    ]
  end
end
