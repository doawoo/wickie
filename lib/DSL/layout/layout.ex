defmodule Wickie.DSL.Layout do
  use TypedStruct
  use Wickie.DSL.Layout.StructBuilder

  alias Wickie.DSL.Util

  typedstruct do
    field :flex, boolean(), enforce: true, default: false
    field :children, list(), enforce: true, default: []
  end

  struct_builder()

  defmacro __using__(_options) do
    quote do
      import Wickie.DSL.Layout
      import Wickie.DSL.Layout.Column
      import Wickie.DSL.Layout.Heading
    end
  end

  defmacro layout(block) do
    children = Util.maybe_find_children(block)
    attrs = [children: children]
    quote do
      Util.build_layout_item(unquote(__MODULE__), unquote(attrs))
    end
  end

  defmacro layout(attrs, do: block) do
    children = Util.maybe_find_children(block)
    attrs = attrs ++ [children: children]
    quote do
      Util.build_layout_item(unquote(__MODULE__), unquote(attrs))
    end
  end
end
