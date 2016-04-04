%%%-------------------------------------------------------------------
%% @doc test_vs public API
%% @end
%%%-------------------------------------------------------------------

-module(vmstats_statsderl_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(StartType, _StartArgs) ->
    % vmstats is an included application.
    ok = application:set_env(vmstats, sink, vmstats_statsderl),
    vmstats:start(StartType, []).

%%--------------------------------------------------------------------
stop(_State) ->
    ok.
