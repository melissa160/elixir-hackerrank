defmodule Hackerrank.Eight2 do
  def start do
    #IO.stream(:stdio, :line)
    File.open!("./input00.txt")
    |> IO.stream(:line)
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.reverse
    |> Enum.map(&IO.puts/1)
  end
end

#defmodule Solution do
#    def solve do
#        #Input
#        list = String.split(IO.read(:all))
#        list = Enum.map(list, fn(x) -> elem(Integer.parse(x), 0) end)
#        
#        # Solution
#        solution = Enum.reverse(list)
#        
#        # Output
#        Enum.each(solution, fn(x) -> IO.puts(x) end)
#    end
#end

#Solution.solve()