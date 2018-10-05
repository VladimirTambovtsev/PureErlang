-module(factorial_client).
-author("vladimir_tambovtsev").

-export([start/0, stop/0, factorial/1, factorialRecorder/2]).

start() ->
	factorial_server:start_link().

stop() ->
	factorial_server:stop().

factorial(Val) ->
	factorial_server:factorial(Val).

factorialRecorder(Val, IoDevice) ->
	factorial_server:factorial(Val, IoDevice).