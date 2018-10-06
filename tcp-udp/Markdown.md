### TCP
General TCP example.

Example in two different processes:

1. 
<pre>
	{ok, LSocket} = gen_tcp:listen(9000, [binary, {active, true}]).
</pre>>

2.
<pre>
	{ok, RSocket} = gen_tcp:connect({127,0,0,1}, 9000, [binary,{active, true}]).
</pre>

1.
<pre>
	{ok, ASocket} = gen_tcp:accept(LSocket).
</pre>

2.
<pre>
	gen_tcp:send(RSocket, "Hello TCP").
</pre>

1.
<pre>
	flush().
Shell got {tcp,#Port<0.6>,<<"Hello TCP">>}
ok
</pre>

Close connection:
<pre>
	gen_tcp:close(ASocket).
</pre>
<pre>
	gen_tcp:close(LSocket).
</pre>

