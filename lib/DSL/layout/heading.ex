defmodule Wickie.DSL.Layout.Heading do
  use TypedStruct
  use Wickie.DSL.Layout.StructBuilder

  alias Wickie.DSL.Util

  typedstruct do
    field :size, :h1 | :h2 | :h3 | :h4, enforce: true, default: :h1
    field :text, String.t(), enforce: true, default: ""
  end

  struct_builder()

  defmacro heading(attrs) do
    quote do
      Util.build_layout_item(unquote(__MODULE__), unquote(attrs))
    end
  end
end
