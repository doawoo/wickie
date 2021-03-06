defmodule WickieTest do
  use ExUnit.Case
  doctest Wickie

  test "greets the world" do
    assert Wickie.hello() == :world
  end
end
