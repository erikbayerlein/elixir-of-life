defmodule Tutorial.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias Tutorial.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "Cristo Redentor", country: "Brasil"}
    ]
  end

  def printNames(wonders) do
    Enum.each(wonders, fn %{name: name} -> IO.puts(name) end)
  end

  def filterByCountry(wonders, country) do
    Enum.filter(wonders, fn %{country: country_name} -> country == country_name end)
  end
end
