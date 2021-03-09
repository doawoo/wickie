defmodule Wickie.Module do
  use GenServer

  @impl GenServer
  def init(_) do
    {:ok, nil}
  end
end
