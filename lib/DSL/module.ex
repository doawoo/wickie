defmodule Wickie.DSL.Module do
  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Module
      use Wickie.DSL.Layout
      use Wickie.DSL.Store
      use Wickie.DSL.Hook
    end
  end

  defmacro module(_name, do: block) do
    case block do
      {:__block__, [], [{:layout, _, layout_ast} | _]} ->
        IO.inspect(layout_ast)
      _ ->
        raise CompileError, description: "A Wickie 'module' block must also contain a 'layout' block"
    end
  end
end
