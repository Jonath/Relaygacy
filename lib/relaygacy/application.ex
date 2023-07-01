defmodule Relaygacy.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      RelaygacyWeb.Telemetry,
      # Start the Ecto repository
      Relaygacy.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Relaygacy.PubSub},
      # Start Finch
      {Finch, name: Relaygacy.Finch},
      # Start the Endpoint (http/https)
      RelaygacyWeb.Endpoint
      # Start a worker by calling: Relaygacy.Worker.start_link(arg)
      # {Relaygacy.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Relaygacy.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RelaygacyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
