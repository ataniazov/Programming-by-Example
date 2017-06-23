%% @author Ata Niyazov
%% @doc @todo Add description to erlangmain.


-module(main).
-import(string, [len/1, concat/2, chr/2, substr/3, str/2,
		to_lower/1, to_upper/1]).


%% ====================================================================
%% API functions
%% ====================================================================


-export([main/0]).
%-export([hello_world/0, add/2, add/3]).


%% ====================================================================
%% Internal functions
%% ====================================================================

hello_world() -> io:fwrite("hello, world\n").

add(A, B) ->
	hello_world(),
	A + B.

add(A, B, C) ->
	A + B + C.

main() ->
%	var_stuff().
%	atom_stuff().
%	do_math(5,4).
%	compare(4, 4.0).
%	what_grade(10).
%	say_hello(german).
%	string_stuff().
%	tuple_stuff().
%	list_stuff().
%	lc_stuff().
%	type_stuff().
%	find_factorial(3).
%	sum([1,2,3]).
%	sum2([1,2,3], 0).
%	for(3, 1).
%	map_stuff().
%	record_stuff().
%	do_math2().
%	fun_staff("Ata").
%	fun_staff2().
%	write_txt("Write to the file"),
%	write_txt2(" More text to the file"),
%	read_txt().
%	error_stuff(0),
%	error_stuff(4),
%	read_txt2().
%	macro_stuff(5, 6).
%	spawner(),
%	spawner(),
%	spawner().
	spawner2(50, 1),
	spawner2(100, 51).

var_stuff() ->
	Num = 1,
	Num.

atom_stuff()->
	an_atom,
	'An Atom'.

do_math(A, B) ->
	A + B,
	A - B,
	A * B,
	A / B,
	A div B,
	A rem B,
	math:exp(1),
	math:log(2.71828182845),
	math:log10(1000),
	math:pow(10, 2),
	math:sqrt(100),
	random:uniform(10).

compare(A, B) ->
	A =:= B,
	A =/= B,
	A == B,
	A /= B,
% > < >= =< and or not xor
	Age = 18,
	(Age >= 5) or (Age =< 18).

preschool() ->
	'Go to preschool'.

kindergarten() ->
	'Go to kindergarten'.

grade_school() ->
	'Go to grade school'.

what_grade(X) ->
	if X < 5 -> preschool()
	; X == 5 -> kindergarten()
	; X > 5 -> grade_school()
	end.
	
say_hello(X) ->
	case X of
		french -> 'Bonjour';
		german -> 'Guten tag';
		english -> 'Hello'
	end.

string_stuff() ->
	Str1 = "Random string",
	Str2 = "Another string",

	io:fwrite("String: ~p ~p\n", [Str1, Str2]),

	Str3 = io_lib:format("It's a ~s and ~s\n", [Str1, Str2]),
	io:fwrite(Str3),
	len(Str3),

	Str4 = concat(Str1, Str2),
	Str4,

	CharIndex = chr(Str4, $n),
	CharIndex,

	Str5 = substr(Str4, 8, 6),
	Str5,

	StrIndex = str(Str4, Str2),
	StrIndex,

	to_upper(Str1),
	to_lower(Str1).
	
tuple_stuff() ->
	My_Data = {42, 175, 6.25},
	My_Data,

	{A,B,C} = My_Data,
	C,

	{D,_,_} = My_Data,
	D,

	My_Data2 = {height, 6.25},
	{height, Ht} = My_Data2,
	Ht.

list_stuff() ->
	List1 = [1,2,3],
	List2 = [4,5,6],
	
	List3 = List1 ++ List2,
	List3,

	List4 = List3 -- List1,
	List4,

	hd(List2),
	tl(List2),

	List5 = [3|List4],
	List5,

	[Head|Tail] = List5,
	Head,
	Tail.

lc_stuff() ->
	List1 = [1,2,3],
	List2 = [2*N || N <- List1],
	List2,

	List3 = [1,2,3,4],
	List4 = [N || N <- List3, N rem 2 == 0],
	List4,

	City_Weather = [{pittsburgh, 50}, {'new york', 53},
			{charlotte, 68}, {miami, 78}],
	Great_Temp = [{City, Temp} || {City, Temp} <- City_Weather, Temp >= 65],
	Great_Temp.

type_stuff() ->
	is_atom(name),
	is_float(3.14),
	is_integer(10),
	is_boolean(false),
	is_list([1,2,3]),
	is_tuple({height, 6.24}),

	List1 = integer_to_list(21),
	List1.

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

find_factorial(X) ->
	Y = factorial(X),
	io:fwrite("Factorial : ~p\n", [Y]).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).

sum2([], Sum) -> Sum;
sum2([H|T], Sum) ->
	io:fwrite("Sum: ~p\n", [Sum]),
	sum2(T, H + Sum).

for(0, _) -> 
	ok;

for(Max, Min) when Max > 0 ->
	io:fwrite("Num : ~p\n", [Max]),
	for(Max-1, Min).

for2(Max, Min) ->
	if Max >= Min ->
		io:fwrite("Num : ~p\n", [Max]),
		for2(Max-1, Min)
	; Max < Min -> ok
	end.

map_stuff() ->
	Bob = #{f_name => 'Bob', l_name => 'Smith'},
	Bob,

	io:fwrite("1st Name : ~p\n", [maps:get(f_name, Bob)]),
	io:fwrite("Keys : ~p\n", [maps:keys(Bob)]),
	io:fwrite("Values : ~p\n", [maps:values(Bob)]),
	io:fwrite("Without Key : ~p\n", [maps:remove(l_name, Bob)]),

	maps:find(f_name, Bob),
	maps:put(address, "123 Main", Bob).

-record(customer,{name = "", bal = 0.00}).

record_stuff() ->
	Sally = #customer{name = "Sally Smith", bal = 100.00},
	Sally2 = Sally#customer{bal = 50},

	io:fwrite("~p owes $ ~p\n", [Sally2#customer.name, Sally2#customer.bal]).


double(X) -> X * 2.
triple(X) -> X * 3.

do_math2() ->
	lists:map(fun double/1, [1,2,3]),
	lists:map(fun triple/1, [1,2,3]).

fun_staff(N) ->
	Fun_Staff = fun() -> io:fwrite("Hello ~p\n", [N]) end,
	Fun_Staff().

fun_staff2() ->
	X = 3,
	Y = 4,

	Z = fun() ->
		io:fwrite("Sum : ~p\n", [X + Y]) end,
	Z().

write_txt(N) ->
	{ok, Fh} = file:open("MyFile.txt", [write]),
	file:write(Fh, N).

write_txt2(N) ->
	{ok, Fh} = file:open("MyFile.txt", [append]),
	file:write(Fh, N).

read_txt() ->
	{ok, File} = file:open("MyFile.txt", [read]),
	Words = file:read(File, 1024 * 1024),
	io:fwrite("~p\n", [Words]).

error_stuff(N) ->
	try
		Ans = 2 / N,
		Ans
	catch
		error:badarith ->
			"Can't divide by zero"
	end.

read_txt2() ->
	try
		{ok, File} = file:open("MyFile1.txt", [read]),
		Words = file:read(File, 1024 * 1024),
		io:fwrite("~p\n", [Words])
	catch
		_:_ ->
			"File doesn't exist"
	end.	

-define(add(X, Y), {X+Y}).
macro_stuff(X, Y) ->
	io:fwrite("Macro Sum: ~p\n", [?add(X, Y)]).

get_id(M) ->
	io:fwrite("ID : ~p\n", [M]).

spawner() ->
	spawn(fun() -> get_id([self()]) end).

spawner2(Max, Min) ->
	spawn(fun() -> for2(Max, Min) end).