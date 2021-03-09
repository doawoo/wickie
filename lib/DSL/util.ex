defmodule Wickie.DSL.Util do
  def build_layout_item(type, attributes) when is_atom(type) and is_list(attributes) do
    type.build(attributes)
  end

  def maybe_find_children({:__block__, _, children}), do: children
  def maybe_find_children(single), do: [single]
end
