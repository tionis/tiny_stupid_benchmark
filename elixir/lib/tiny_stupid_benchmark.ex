defmodule TinyStupidBenchmark do
  @moduledoc """
  Documentation for `TinyStupidBenchmark`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TinyStupidBenchmark.hello()
      :world

  """
  def hello do
    :world
  end

  def simple do
    # naive first try, probably wont work
    num = 1000000000
    IO.puts(sum(1, num))
  end

  def better do
    IO.puts "Starting"
  end

  defp sum(lower, upper) do
    if upper == lower do
      upper
    else
      upper + sum(lower, upper-1)
    end
  end

end
