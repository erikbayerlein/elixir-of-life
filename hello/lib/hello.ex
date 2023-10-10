defmodule Hello do
  def helloWorld do
    IO.puts("Hello world")
  end

  def helloYou(name) do
    IO.puts("Hello #{name}")
  end

  def inputNum do
    a = IO.gets("Write a number: ")
    {a, _d} = Integer.parse(a) # the return is the tuple {x , ""} # the _d is to tell that d is never used
    a
  end

  def pipeOperator do
    # another way to input
    {new_num, _} = IO.gets("Write a number: ") |> Integer.parse()
    new_num
  end

  def list do
    ["eat apple", "jiu-jitsu", "elixir"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def randomTask(tasks) do
    Enum.take_random(tasks, 2)
  end
end

name = IO.gets("Write your name: ")

Hello.helloWorld()
Hello.helloYou(name)
