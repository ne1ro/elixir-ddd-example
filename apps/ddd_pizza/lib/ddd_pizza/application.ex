defmodule DddPizza.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DddPizza.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: DddPizza.PubSub}
      # Start a worker by calling: DddPizza.Worker.start_link(arg)
      # {DddPizza.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: DddPizza.Supervisor)
  end
end
