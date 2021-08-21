defmodule Mix.Tasks.Better do
  use Mix.Task

  @shortdoc "Simply calls better function."
  def run(_) do
    TinyStupidBenchmark.better()
  end
end
