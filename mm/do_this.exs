defmodule DoThis do

  def erl_float_to_string float do
    # This is the same function in Erlang
    # io_lib:format("~.2f", [Float_Var]).
    # Few changes need to be made for it to be call in Elixir

    :io_lib.format("~.2f", [float])
  end

end
