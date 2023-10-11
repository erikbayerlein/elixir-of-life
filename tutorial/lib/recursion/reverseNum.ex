defmodule Tutorial.Recursion.ReverseNum do

  def revNum(num, acc \\0)
  def revNum(0, acc), do: acc

  def revNum(num, acc) do # acc = acumulator
    newNum = div(num, 10)
    newAcc = acc * 10 + rem(num, 10)
    revNum(newNum, newAcc)
  end

end
