defmodule DddPizza.Domain do
  @moduledoc """
  Domain model of the pizza delivery service.
  """

  # TODO: decimal
  @type delivery_status :: :ordered | :baking | :delivering | :completed | :canceled
  @type price :: float
  @type pizza_type :: :napoli | :parma | :margherita | :romana
  @type pizza :: %{
          name: pizza_type,
          description: String.t(),
          price: float
        }

  @type delivery :: %{
          optional(any) => any,
          items: [pizza],
          email: String.t(),
          status: delivery_status,
          # TBD
          address: map,
          total_amount: float
        }
end
