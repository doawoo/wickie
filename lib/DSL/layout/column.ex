defmodule Wickie.DSL.Layout.Column do
  use TypedStruct
  use Wickie.DSL.Layout.StructBuilder

  alias Wickie.DSL.Util

  typedstruct do
    field :flex, boolean(), enforce: true, default: false
    field :ratio, integer(), enforce: true, default: 0
    field :children, list(), enforce: true, default: []
  end

  struct_builder()

  defmacro column(block) do
    children = Util.maybe_find_children(block)
    attrs = [children: children]
    quote do
      Util.build_layout_item(unquote(__MODULE__), unquote(attrs))
    end
  end

  defmacro column(attrs, do: block) do
    children = Util.maybe_find_children(block)
    attrs = attrs ++ [children: children]
    quote do
      Util.build_layout_item(unquote(__MODULE__), unquote(attrs))
    end
  end
end
