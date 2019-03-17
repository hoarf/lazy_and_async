defmodule AppWeb.LeagueView do
  use AppWeb, :view

  def render("index.json", %{leagues: leagues}) do
    render_many(leagues, __MODULE__, "record.json")
  end

  def render("show.json", %{league: record}) do
    render_one(record, __MODULE__, "record.json")
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
