defmodule Hackerrank.Seven do
  def start do
    {num, _} = Integer.parse(read)
    list = 
      Enum.map((0 .. num-1), fn x -> "#{x} " end)
      |> Enum.join
    "["<>list<>"]"
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