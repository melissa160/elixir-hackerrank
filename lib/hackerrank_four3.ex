defmodule Hackerrank.Four3 do
  def main do
    {n, _} = Integer.parse(read)
    puts(n, 10)
  end

  def puts(n, limit) when limit <= 0, do: :ok
  def puts(n, limit) do
    {x, _} = Integer.parse(read)
    prints(x, n)
    puts(n, limit - 1)
  end

  def prints(x, n) when n <= 0, do: :ok
  def prints(x, n) do
    IO.puts x
    prints(x, n - 1)
  end

  def read do
    case IO.read(:stdio, :line) do
      :eof -> :ok
      {:error, reason} -> IO.puts "Error: #{reason}"
      data ->
        data
    end
  end
end