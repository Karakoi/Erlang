%%%-------------------------------------------------------------------
%%% @author Karakoi Andrii
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Март 2017 17:16
%%%-------------------------------------------------------------------
-module(mathserver).
-author("Karakoi Andrii").

%% API
-export([start/0, add/2]).

start() ->
  Pid = spawn(fun() -> loop() end),
  register(mathserver, Pid).

loop() ->
  receive
    {From, {add, First, Second}} ->
      From ! {mathserver, First + Second},
      loop()
  end.

add(First, Second) ->
  mathserver ! {self(), {add, First, Second}},
  receive
    {mathserver, Reply} -> Reply
  end.