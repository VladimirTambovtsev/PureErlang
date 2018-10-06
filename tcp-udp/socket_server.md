### TCP for starting socket_server.erl

1. Compile <code>socket_server.erl</code>

2. Open Connection
<pre>
	socket_server:start_server().
</pre>

	In open connection run new erl process:
<pre>
1>	{ok, Socket} = gen_tcp:connect({127,0,0,1}, 9000, [binary, {active, true}]).
{ok,#Port<0.5>}
2>	gen_tcp:send(Socket, "Hello"). 
ok
3>	flush().
Shell got {tcp,#Port<0.5>,<<"Everything else">>}
ok
4>  gen_tcp:send(Socket, "How is it goin").
ok
5>  flush().
Shell got {tcp,#Port<0.5>,<<"ASocket: Fine">>}
ok
</pre>

