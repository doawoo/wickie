defmodule Wickie.DSL.Hook do
  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Hook
    end
  end

  defmacro hook(do: block) do
    block
  end
end
