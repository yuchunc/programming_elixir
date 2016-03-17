defmodule Chop do
  def guess(actual, min..max) when actual < min or actual > max, do: "Bad input"

  def guess(actual, range) do
    {actual, range}
      |> guessing
  end

  def guessing {actual, min..max} do
    {actual, div(min+max, 2), {min, max}}
      |> print_result
      |> hypothesize
      |> guessing
  end

  def guessing({actual, _}), do: IO.puts actual

  def hypothesize({actual, middle, {_, max}}) when actual > middle, do: {actual,middle..max}

  def hypothesize({actual, middle, {min, _}}) when actual < middle, do: {actual, min..middle}

  def hypothesize({actual, middle, {_, _}}) when actual == middle, do: {actual, middle}

  def print_result({actual, guessed, range}) do
    IO.puts "Is it #{guessed}?"
    {actual, guessed, range}
  end
end
