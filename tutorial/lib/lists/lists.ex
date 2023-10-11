defmodule Tutorial.Lists.Lists do

    # ---------------------- sum

  def sumSimple([]), do: 0
  def sumSimple([h | t]) do
    h + sumSimple(t)
  end

  def sumTail(nums, acc \\0)
  def sumTail([], acc), do: acc
  def sumTail(nums, acc) do
    [h | t] = nums
    sumTail(t, acc+h)
  end

  # ---------------------- reverse

  def rev(list, accList \\ [])
  def rev([], accList), do: accList
  def rev(list, accList) do
    [h | t] = list
    rev(t, [h | accList])
  end

  def map(elements, func, acc \\ []) # func = anonymous function = fn x -> x * 2 end -----> é necessário passar a função dessa forma
  def map([], _, acc), do: acc |> rev() # or rev(acc)
  def map(elements, func, acc) do
    [h | t] = elements
    map(t, func, [func.(h) | acc])
  end

  # ---------------------- concat

  # É necessário usar a função reverse, pois se fizéssemos apenas a concatenação,
  # teríamos a primeira lista invertida concatenada com a segunda
  def concat(list1, list2), do: concatFunc(list1 |> rev(), list2) # or rev(list1)

  defp concatFunc([], list2), do: list2 # defp significa que a função é privada, ou seja, só pode ser usada internamente
  defp concatFunc(list1, list2) do
    [h | t] = list1
    concatFunc(t, [h | list2])
  end

end
