-module(main).
-author("Karakoi Andrii").

%% API
-export([hello/0]).

hello() ->
  io:format("Hello. It's Erlang ").