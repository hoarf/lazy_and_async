defmodule AppWeb.LeagueView do
  use AppWeb, :view

  def render("index.json", %{leagues: records}) do
    render_many(records, __MODULE__, "record.json")
  end

  def render("record.json", %{league: record}) do
    %{
      season: record.season,
      league: record.league,
      hometeam: record.hometeam,
      awayteam: record.awayteam
    }
  end
end
