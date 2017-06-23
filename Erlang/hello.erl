-module(hello).
-export([hello/1]).

hello(robert) ->
	io:format("Hello, Mike.~n");
hello(joe) ->
	io:format("Hello, Robert.~n");
hello(mike) ->
	io:format("Hello, Joe.~n");
hello(_) ->
	io:format("Who are you?~n").
