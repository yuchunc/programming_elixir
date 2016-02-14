# First Part #
mystery = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts mystery.(0, 0, 1)
IO.puts mystery.(0, 1, 1)
IO.puts mystery.(1, 0, 1)
IO.puts mystery.(1, 1, 1)

# Second Part #
mystery2 = fn x -> mystery.(rem(x,3), rem(x,5), x) end

IO.puts mystery2.(10)
IO.puts mystery2.(11)
IO.puts mystery2.(12)
IO.puts mystery2.(13)
IO.puts mystery2.(14)
IO.puts mystery2.(15)
IO.puts mystery2.(16)
IO.puts mystery2.(17)
IO.puts mystery2.(18)
IO.puts mystery2.(19)
