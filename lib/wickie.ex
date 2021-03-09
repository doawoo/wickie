defmodule Wickie do
  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Wickie.Server.Plug, options: [port: 4000]}
    ]

    options = [strategy: :one_for_one, name: Wickie.Supervisor]

    Supervisor.start_link(children, options)
  end
end
