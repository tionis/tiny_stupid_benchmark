defmodule Mix.Tasks.Simple do
  use Mix.Task

  @shortdoc "Simply calls the simple function."
  def run(_) do
    TinyStupidBenchmark.simple()
  end
end
