defmodule Throwaway.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Throwaway.Repo,
      # Start the Telemetry supervisor
      ThrowawayWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Throwaway.PubSub},
      # Start the Endpoint (http/https)
      ThrowawayWeb.Endpoint
      # Start a worker by calling: Throwaway.Worker.start_link(arg)
      # {Throwaway.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Throwaway.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ThrowawayWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
