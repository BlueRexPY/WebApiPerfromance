defmodule ElixirPhoenixApi.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirPhoenixApi.Repo,
      {Phoenix.PubSub, name: ElixirPhoenixApi.PubSub},
      ElixirPhoenixApi.Endpoint
    ]

    opts = [strategy: :one_for_one, name: ElixirPhoenixApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    ElixirPhoenixApi.Endpoint.config_change(changed, removed)
    :ok
  end
end
