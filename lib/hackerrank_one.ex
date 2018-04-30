defmodule Hackerrank.One do

  def receive_number do
    {num, _} = Integer.parse(IO.gets(""))
    num
  end 

  def sum_operation do
    Hackerrank.One.receive_number + Hackerrank.One.receive_number
  end 

  def make_sum do
    IO.puts "#{Hackerrank.One.sum_operation}"
  end
end
