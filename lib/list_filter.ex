defmodule ListFilter do
  def call([head | tail]) do
    listnumber = filterList([head | tail])
    oddNumbers = Enum.filter(listnumber, fn x -> rem(x, 2) == 1 end)
    Enum.count(oddNumbers)
  end

  def filterList([]) do
    []
  end

  def filterList([head | tail]) do
    isNumber = Integer.parse(head)

    filter = fn
      {number, _} -> [number]
      _ -> []
    end

    filtrados = filter.(isNumber) ++ filterList(tail)

    filtrados
  end
end
