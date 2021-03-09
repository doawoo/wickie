defmodule Wickie.DSL.Store do
  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Store
    end
  end

  defmacro store(options) do
    {:store, options}
  end
end
