module Message exposing (..)

import Http

import Aggregated
import BigQuery
import HackerNews
import Routes exposing (Sitemap)


type Msg
    = RouteChanged Sitemap
    | RouteTo Sitemap
    | GetRankComplete (Result Http.Error Int)
    | GetRank
    | GetGithub
    | GetGithubComplete (Result Http.Error BigQuery.Result)
    | GetAggregated
    | GetAggregatedComplete (Result Http.Error Aggregated.Result)
    | GetHackerNews
    | GetHackerNewsComplete (Result Http.Error HackerNews.Result)
