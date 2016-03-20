defmodule Exercise do

  # Exercise 0
  def sum([]), do: nil

  def sum([head | []]), do: head

  def sum([add_this | [ with_this | the_rest]]), do: sum( [add_this + with_this | the_rest])

  # Exercise 1
  def mapsum( [], _func), do: 0

  def mapsum( [head | tail], func ), do: func.(head) + mapsum(tail, func)
end
