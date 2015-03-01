defmodule ReadFile do

  def print_line(file) do
    line = IO.read(file, :line)
    if line != :eof do
      IO.puts(line)
      print_line(file)
    else
      File.close(file)
    end
  end

  def generateSql() do
    file_name = "/Users/rafael/Downloads/10mb.txt"
    case File.open(file_name, [:read]) do
      {:ok, file} -> print_line(file)
      {:error, message} -> IO.puts "Erro ao abrir arquivo"
    end
  end

end
