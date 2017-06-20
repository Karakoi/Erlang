-module(math).
-author("Karakoi Andrii").

%% API
-export([sqrt/1, fact/1, list/0]).

sqrt(X) -> X*X.

fact(0) -> 1;
fact(N) -> N*fact(N-1).

list() -> {10,20,30,40,50}.