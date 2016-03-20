defmodule Exercise0 do

  def sum([]), do: nil

  def sum([head | []]), do: head

  def sum([add_this | [ with_this | the_rest]]), do: sum( [add_this + with_this | the_rest])
end
