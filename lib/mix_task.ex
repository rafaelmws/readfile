defmodule Mix.Tasks.GenSql do
  use Mix.Task

  def run(_) do
    ReadFile.generateSql()
  end
end
