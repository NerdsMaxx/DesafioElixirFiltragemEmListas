defmodule ListFilter do
  def call(list) do
    Enum.count(list, fn str ->
      str = String.to_charlist(str)
      is_str_number(str) and is_odd(str)
    end)
  end

  defp is_str_number(str) do
    not Enum.any?(str, fn ch -> ch < ?0 or ch > ?9 end)
  end

  defp is_odd(str) do
    odd = [?1, ?3, ?5, ?7, ?9]
    last = Enum.at(str, length(str) - 1)
    Enum.any?(odd, fn elem -> elem == last end)
  end
end
