defmodule DddPizzaWeb.Router do
  use DddPizzaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DddPizzaWeb do
    pipe_through :api
  end
end
