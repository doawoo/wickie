defmodule Wickie.DSL.Layout do
  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Layout
    end
  end

  defmacro layout(do: block) do
    Macro.escape({:layout, children: block})
  end

  defmacro column(options, block) do
    Macro.escape({:column, options, children: block})
  end

  defmacro label(options) do
    Macro.escape({:label, options})
  end

  defmacro heading(options) do
    Macro.escape({:heading, options})
  end

  defmacro hr(options) do
    Macro.escape({:hr, options})
  end

  defmacro p(options) do
    Macro.escape({:p, options})
  end
end
