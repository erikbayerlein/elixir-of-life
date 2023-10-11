defmodule Tutorial.Recursion.SumDigits do

  def upto(0), do: 0

  def upto(num) do
    num + upto(num - 1)
  end

  def uptoTaleRec(num, sum \\ 0) # especifica as entradas

  def uptoTaleRec(0, sum) do
    sum
  end

  def uptoTaleRec(num, sum) do
    uptoTaleRec(num - 1, num + sum)
  end
end
