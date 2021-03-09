defmodule Wickie.DSL.Layout.StructBuilder do
  defmacro __using__(_opts) do
    quote do
      import Wickie.DSL.Layout.StructBuilder
    end
  end

  defmacro struct_builder() do
    quote generated: true do
      def build(attrs) when is_list(attrs) do
        filtered = Enum.filter(attrs, fn {_k, v} -> !is_nil(v) end)
        struct(unquote(__CALLER__.module), filtered)
      end

      def build() do
        struct(unquote(__CALLER__.module), [])
      end
    end
  end
end
