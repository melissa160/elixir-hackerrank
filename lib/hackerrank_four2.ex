defmodule Hackerrank.Four2 do
  defp receive_number do
    a = IO.gets("")
    if a == "\n" do
      nil
    else
      a |> String.trim |> String.to_integer
    end
  end

  defp n_times_puts(n, x) do
    for _ <- 1..n, do: IO.puts(x)
  end

  defp replication(n) do
    if x = receive_number, do: n_times_puts(n, x)
    replication(n)
  end

  def start do
    n = receive_number
    replication(n)
  end
end