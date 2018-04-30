defmodule Hackerrank.Six do

  def entry_loop(count \\ 0) do
    {num, _} = Integer.parse(read)

    if rem(count, 2) == 1 do
      IO.puts num
    end
    entry_loop(count + 1)
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