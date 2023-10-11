defmodule Tutorial.Recursion.PrintDigits do
  def upto(0) do
    :ok
  end

  def upto(num) do
    IO.puts(num)
    upto(num-1)
  end

end
