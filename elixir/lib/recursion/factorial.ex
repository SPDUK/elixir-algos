defmodule Factorial do
  @moduledoc """
    The result *= n - 1, repeated until 0
  """
  @doc """
    The basic/usual way of using recursion to solve factorial
    num enters as 4, if num is 1 we return 1, else we will have to calculate simple_fact again to figure out what num should be multiplied by
    Inside the recursive call we do the same, repeating over and over until every `num * simple_fact(num - 1)` reaches 1,
    Once we hit the base case it will go backwards, eg turning `num * simple_fact(num - 1)` into `num * 3`, and returning that to the recursive call that called it.
  """
  def simple_fact(num) do
    if num <= 1 do
      1
    else
      num * simple_fact(num - 1)
    end
  end

  @doc """
  A more elixir way of doing it, where we use function overloading to return 1 when an input of 0 is given
  Also uses tail call optimization because the last thing being used is a recursive call, not math
  """
  def fact(n), do: _fact(n, 1)
  def _fact(0, acc), do: acc

  def _fact(n, acc) when is_integer(n) and n > 0 do
    _fact(n - 1, acc * n)
  end
end
