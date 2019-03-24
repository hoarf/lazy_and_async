defmodule App.League do
  @moduledoc ~S"""

  This is the domain API.

  """
  alias App.LeagueCache

  @default_page_size 20

  require Logger

  def list(league, season, page \\ 1) do
    {:ok, results} =
      case {league, season} do
        {nil, nil} ->
          LeagueCache.all()

        {league, season} ->
          Logger.info(league)
          LeagueCache.get_by(league, season)
      end

    {:ok, Scrivener.paginate(results, page: page, page_size: @default_page_size)}
  end
end
