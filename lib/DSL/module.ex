defmodule Wickie.DSL.Module do
  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Module
      use Wickie.DSL.Layout
      use Wickie.DSL.Store
      use Wickie.DSL.Hook
    end
  end

  defmacro module(name, do: block) do
    quote do
      def __wickie__module do
        {:wickie_module, [name: unquote(name), layout: unquote(block)]}
      end
    end
  end
end
