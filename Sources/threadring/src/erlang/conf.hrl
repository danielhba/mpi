%-define(OUT_FILE, "erl_out.txt").
-define(ERR_REPORT(Msg, Reason), io:format("%%%%%%%%%%%%%% ERRO %%%%%%%%%%%%%%\n" ++
				     "Msg: ~w\n" ++
				     "Reason: ~w\n\n", [Msg, Reason])).
-define(OUT_PATH, "../../docs/erlang/out_erl_threadring.txt").
