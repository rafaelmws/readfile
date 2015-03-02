defmodule Mix.Tasks.Read do
  use Mix.Task

  @shortdoc "Print line by line"

  def run(file_name) do
    ReadFile.read_file(file_name)
  end

end
