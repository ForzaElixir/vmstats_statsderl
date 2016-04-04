-module(vmstats_statsderl).
-behaviour(vmstats_sink).

%% Behaviour exports
-export([collect/3]).

%%====================================================================
%% Behaviour functions
%%====================================================================

collect(counter, Key, Value) ->
    statsderl:increment(Key, Value, 1.0);
collect(gauge, Key, Value) ->
    statsderl:gauge(Key, Value, 1.0);
collect(timing, Key, Value) ->
    statsderl:timing(Key, Value, 1.0).
