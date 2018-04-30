defmodule Hackerrank.Three do
  def printn do
    {num, _} = Integer.parse(IO.gets "")
    say_hello = fn _x -> IO.puts "Hello World" end
    (1 .. num) |>  Enum.each(say_hello)
  end
end