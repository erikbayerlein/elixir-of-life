defmodule Tutorial.Recursion.FactorialDigits do

  def factorial(num, fact \\ 1)

  def factorial(0, _), do: 1

  def factorial(1, fact) do
    fact
  end
  def factorial(num, fact) do
    factorial(num-1, fact*num)
  end
end
