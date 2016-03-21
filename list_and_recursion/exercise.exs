defmodule Exercise do

  # Exercise 0
  def sum([]), do: nil

  def sum([head | []]), do: head

  def sum([add_this | [ with_this | the_rest]]), do: sum( [add_this + with_this | the_rest])

  # Exercise 1
  def mapsum( [], _func), do: 0

  def mapsum( [head | tail], func ), do: func.(head) + mapsum(tail, func)

  # Exercise 2
  # NOTE Enum.max method is inplemented with reduce and Kernal.max
  def list_max(list), do: Enum.max(list)

  # Exercise 3
  # NOTE ?z would produce the codepoint of the charter z, which is 122
  def caesar([], _n), do: []

  def caesar([head|tail], n) when head + n <= ?z, do: [ head + n | caesar(tail, n) ]

  def caesar([head|tail], n), do: [ head + n - 26 | caesar(tail, n) ]

end
