%%%-------------------------------------------------------------------
%%% @author Karakoi Andrii
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Апр. 2017 15:25
%%%-------------------------------------------------------------------
-module(translator).
-author("Karakoi Andrii").
-export([translate/2]).

translate(Word, Language) ->
  case Language of
    'Spanish' -> spanish(Word)
  end.

spanish(Word) ->
  case Word of
    'friend' -> 'amigo'
  end.

