defmodule Hackerrank.Five2 do
  def start do
    {delimiter, _} = Integer.parse(read)
    entry_loop(delimiter = delimiter)
  end

  defp entry_loop(delimiter) do
    {num, _} = Integer.parse(read)
    if num < delimiter do
      IO.puts num
    end
    entry_loop(delimiter)
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