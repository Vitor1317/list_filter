defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "greets the world" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    assert ListFilter.call(list) == 3
  end
end
