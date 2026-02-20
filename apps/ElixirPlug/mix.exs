defmodule ElixirPlugApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_plug_api,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {ElixirPlugApi.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.7"},
      {:jason, "~> 1.4"},
      {:postgrex, "~> 0.19"}
    ]
  end
end
