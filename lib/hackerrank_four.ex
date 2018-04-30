defmodule Hackerrank.Four do
  def start do
    {times, _} = Integer.parse(IO.gets "")
    Hackerrank.Four.entry_loop(times = times)
  end

  def entry_loop(tries \\ 0, list \\ [], times) 
  
  def entry_loop(tries, list, times) when tries <= 9 do
    num = IO.gets("") |> String.trim
    list = list ++ [num]
    if num == "" do
      tries = 10
      list = list -- [num]
    end
    entry_loop(tries + 1, list, times)
  end
  
  def entry_loop(tries, list, times) when tries > 9 do
    IO.puts "ya sale, la lista"
    IO.inspect list
    IO.puts "los times"
    IO.inspect times

    Hackerrank.Four.print2(list, times)
  end

  def print2(list, times) do
    IO.puts "resultado final"
    for num <- list,
     _t <- (1 .. times) do
        IO.puts num
    end
  end
end