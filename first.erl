-module(first).
-export([double/1, mult/2, say_sth/2, start_concurrency/2]).

mult(X,Y) ->
	X*Y.
double(X) ->
	mult(2,X).


% Tail recursion
say_sth(_, 0) ->
	io:format("Done ~n");
say_sth(Value, Count) ->
	io:format("~s ~n", [Value]),
	say_sth(Value, Count - 1).

% threads
start_concurrency(Value1, Value2) ->
	spawn(first, say_sth, [Value1, 3]),
	spawn(first, say_sth, [Value2, 3]).


