defmodule TinyStupidBenchmarkTest do
  use ExUnit.Case
  doctest TinyStupidBenchmark

  test "greets the world" do
    assert TinyStupidBenchmark.hello() == :world
  end
end
