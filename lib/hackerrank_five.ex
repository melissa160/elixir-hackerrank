defmodule Hackerrank.Five do
  def start do
    {delimiter, _} = Integer.parse(read)
    entry_loop(delimiter = delimiter)
  end

  defp entry_loop(delimiter, final_list \\ []) do
    {num, _} = Integer.parse(read)
    IO.puts "el delimiter"
    IO.inspect delimiter
    IO.inspect num
    if num === "\n" do
      IO.puts "se acaba"
      delimiter = 0
    else
      IO.puts "en el else"
      if num < delimiter do
        IO.puts "es menor"
        final_list = final_list ++ [num]
      end
    end
    IO.puts "la lista"
    IO.inspect final_list
    entry_loop(delimiter, final_list)
  end

  defp entry_loop(delimiter, final_list) when delimiter <= 0 do
    IO.puts "entro para imprimir resultados"
    Enum.each(final_list, fn x -> IO.puts x end)
  end

  defp read do
    case IO.read(:stdio, :line) do
      :eof -> :ok
      {:error, reason} -> IO.puts "Error: #{reason}"
      data ->
        data
    end
  end
end