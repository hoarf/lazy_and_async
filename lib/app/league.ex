defmodule App.League do
  @moduledoc """

  This is the domain API.

  """

  alias App.LeagueCache

  def list() do
    LeagueCache.list()
  end

  def get_by(league, season) do
    LeagueCache.get_by(league, season)
  end
end
