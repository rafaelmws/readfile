defmodule ReadFile do

  defp print_line(file) do
    line = IO.read(file, :line)
    if line != :eof do
      IO.puts(line)
      print_line(file)
    else
      File.close(file)
    end
  end

  def read_file(file_name) do
    case File.open(file_name, [:read]) do
      {:ok, file} -> print_line(file)
      {:error, message} -> IO.puts "Erro ao abrir arquivo"
    end
  end

end
