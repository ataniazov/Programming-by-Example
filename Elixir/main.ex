defmodule Main do
  @moduledoc false
  def main do
#    name = IO.gets("What is your name? ") |> String.trim
#    IO.puts "Hello #{name}"
#    data_stuff()
#    do_stuff()
#    do_math()
#    do_logic()
#    do_tuples()
#    do_lists()
#    do_maps()
#    do_pattern_matching()
#    do_func()
#    do_list_comp()
#    do_exept_handl()
    do_concurent()
  end

  def data_stuff() do
    my_int = 123
    IO.puts("Integer: #{is_integer(my_int)}")

    my_float = 3.14159
    IO.puts("Float: #{is_float(my_float)}")

    IO.puts("Atom: #{is_atom(:Pittsburgh)}")
    IO.puts "Atom: #{is_atom(:"New York")}"

    one_to_10 = 1..10
  end

  def do_stuff do
    my_str = "My Sentence"
    IO.puts("Length: #{String.length(my_str)}")

    longer_str = my_str <> " " <> "is longer"

    IO.puts "Equal: #{"Egg" === "egg"}"
    IO.puts "My ? #{String.contains?(my_str, "My")}"

    IO.puts "First: #{String.first(my_str)}"

    IO.puts "Index 4: #{String.at(my_str, 4)}"

    IO.puts "Substring: #{String.slice(my_str, 3, 8)}"

    IO.inspect String.split(longer_str, " ")

    IO.puts String.reverse(longer_str)
    IO.puts String.upcase(longer_str)
    IO.puts String.downcase(longer_str)
    IO.puts String.capitalize(longer_str)

    # pipes
    4 * 10 |> IO.puts
  end

  def do_math do
    IO.puts "5 + 4 = #{5+4}"
    IO.puts "5 - 4 = #{5-4}"
    IO.puts "5 * 4 = #{5*4}"
    IO.puts "5 / 4 = #{5/4}"
    IO.puts "5 div 4 = #{div(5,4)}"
    IO.puts "5 rem 4 = #{rem(5,4)}"

    IO.puts "4 == 4.0 : #{4 == 4.0}"
    IO.puts "4 === 4.0 : #{4 === 4.0}"
    IO.puts "4 != 4.0 : #{4 != 4.0}"
    IO.puts "4 !== 4.0 : #{4 !== 4.0}"

    IO.puts "5 > 4 : #{5 > 4}"
    IO.puts "5 >= 4 : #{5 >= 4}"
    IO.puts "5 < 4 : #{5 < 4}"
    IO.puts "5 <= 4 : #{5 <= 4}"
  end

  def do_logic do
    age = 16

    IO.puts "Vote & Drive : #{(age >= 16) and (age >= 18)}"
    IO.puts "Vote or Drive : #{(age >= 16) or (age >= 18)}"

    IO.puts not true

    if age >= 18 do
      IO.puts "Can Vote"
    else
      IO.puts "Can't Vote"
    end

    unless age === 18 do
      IO.puts "You're not 18"
    else
      IO.puts "You're 18"
    end

    cond do
      age >= 14 -> IO.puts "You can wait"
      age >= 16 -> IO.puts "You can drive"
      age >= 18 -> IO.puts "You can vote"
      true -> IO.puts "Default"
    end

    cond do
      age >= 18 -> IO.puts "You can vote"
      age >= 16 -> IO.puts "You can drive"
      age >= 14 -> IO.puts "You can wait"
      true -> IO.puts "Default"
    end

    case 2 do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"
    end

    IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't Vote"}"
  end

  def do_tuple do
    my_stats = {165, 6.25, :Ata}

    IO.puts "Tuple : #{is_tuple(my_stats)}"

    my_stats2 = Tuple.append(my_stats, 25)

    IO.puts "Age: #{elem(my_stats2, 3)}"

    IO.puts "Tuple Size: #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)

    my_stats4 = Tuple.insert_at(my_stats3, 0, 1992)

    many_zeroes = Tuple.duplicate(0, 5)

    {weight, height, name} = {165, 6.25, "Ata"}
    IO.puts "Name: #{name}"
  end

  def do_lists do
    list1 = [1,2,3]
    list2 = [4,5,6]

    list3 = list1 ++ list2
    list4 = list3 -- list1

    IO.puts 6 in list4

    [head | tail] = list3
    IO.puts "Head: #{head}"

    IO.write "Tail: "
    IO.inspect tail

    IO.inspect [97, 98]
    IO.inspect [97, 98], char_lists: :as_lists

    Enum.each tail, fn item ->
        IO.puts item
    end

    words = ["Random", "Words", "in a", "list"]

    Enum.each words, fn word ->
        IO.puts word
    end

    display_list(words)

    IO.puts display_list(List.delete(words, "Random"))

    display_list(List.delete(words, "Random"))

    display_list(List.delete_at(words, 1))

    display_list(List.insert_at(words, 4, "Yeah"))

    IO.puts List.first(words)
    IO.puts List.last(words)

    my_stats = [name: "Ata", height: 6.25]
  end

  def display_list([word|words]) do
    IO.puts word
    display_list(words)
  end

  def display_list([]), do: nil

  def do_maps do
    capitals = %{"Alabama" => "Montgomery",
                 "Alaska" => "Juneau",
                 "Arizona" => "Phoenix"}

    IO.puts "Capitol of Alaska is #{capitals["Alaska"]}"

    capitals2 = %{alabama: "Montgomery",
                 alaska: "Juneau",
                 arizona: "Phoenix"}

    IO.puts "Capitol of Arizona is #{capitals2.arizona}"

    capitals3 = Dict.put_new(capitals, "Arkansas", "Little Rock")
  end

  def do_pattern_matching do
    [length, width] = [20,30]
    IO.puts "Width: #{width}"

    [ _ , [ _ , a ]] = [20,[30,40]]
    IO.puts "Get Num: #{a}"
  end

  def do_func do
    get_sum = fn(x, y) -> x + y end
    IO.puts "5 + 4 = #{get_sum.(5, 4)}"

    get_less = &(&1 - &2)
    IO.puts "5 - 4 = #{get_less.(5, 4)}"

    add_sum = fn
        {x, y} -> IO.puts "#{x} + #{y} = #{x + y}"
        {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x + y + z}"
    end

    add_sum.({1,2})
    add_sum.({1,2,3})

    IO.puts do_it()

    IO.puts "Factorial of 3 is #{factorial(3)}"
    IO.puts "Factorial of 4 is #{factorial(4)}"

    IO.puts "Sum : #{sum([1,2,3])}"

    loop(5,1)

    IO.puts "All item in List even : #{Enum.all?([1,2,3],
    fn(n) -> rem(n, 2) == 0 end)}"

    IO.puts "Any item in List even : #{Enum.any?([1,2,3],
    fn(n) -> rem(n, 2) == 0 end)}"

    Enum.each([1,2,3], fn(n) -> IO.puts n end)

    dbl_list = Enum.map([1,2,3], fn(n) -> n * 2 end)
    IO.inspect dbl_list

    sum_vals = Enum.reduce([1,2,3], fn(n, sum) -> n + sum end)
    IO.puts "Sum: #{sum_vals}"

    IO.inspect Enum.uniq([1,2,2])

  end

  def do_it(x \\ 1, y \\ 1) do
    x + y
  end

  def factorial(num) do
    if num <= 1 do
      1
    else
      result = num * factorial(num - 1)
      result
    end
  end

  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def loop(0, _ ), do: nil
  def loop(max, min) do
    if max < min do
      loop(0, min)
    else
      IO.puts "Num : #{max}"
      loop(max - 1, min)
    end
  end

  def do_list_comp do
    dbl_list = for n <- [1,2,3], do: n * 2
    IO.inspect dbl_list

    even_list = for n <- [1,2,3,4], rem(n, 2) == 0, do: n
    IO.inspect even_list
  end

  def do_exept_handl do
    err = try do
      5 / 0
    rescue
      ArithmeticError -> "Can't divide by zero"
    end

    IO.puts err
  end

  def do_concurent do
    spawn(fn() -> loop(50, 1) end)
    spawn(fn() -> loop(100, 51) end)

    send(self(), {:french, "Bob"})

    receive do
      {:german, name} -> IO.puts "Guten tag #{name}"
      {:french, name} -> IO.puts "Bonjour #{name}"
      {:english, name} -> IO.puts "Hello #{name}"
    after
      500 -> IO.puts "Time is up"
    end
  end
end