defmodule DoThis do

  def erl_float_to_string float do
    # This is the same function in Erlang
    # io_lib:format("~.2f", [Float_Var]).
    # Few changes need to be made for it to be call in Elixir

    :io_lib.format("~.2f", [float])
  end

  def print_env env_var do
    env_var
      |> String.upcase
      |> System.get_env
  end

  def print_ext file_path do
    Path.extname(file_path)
  end

  def current_dir do
    IEx.Helpers.pwd
  end

  # Use poison

  def run_cmd cmd, args \\ [], opts \\ [] do
    System.cmd(cmd, args, opts)
  end
end
