defmodule DddPizza.Repo do
  use Ecto.Repo,
    otp_app: :ddd_pizza,
    adapter: Ecto.Adapters.Postgres
end
