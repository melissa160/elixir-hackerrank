defmodule Hackerrank.Eight do
  def start(num \\ "0", list \\ [])

  def start(num, list) when num != "" do
    num =
      IO.gets("")
      |> String.trim
    
    list = list ++ [num]
    start(num, list)
  end

  def start(num, list) when num == "" do
    IO.inspect list
    final_list =
      Enum.reverse(list) 
      |> Enum.map(fn x -> "#{x} " end)
      |> Enum.join
    
      
    IO.puts final_list
  end
end