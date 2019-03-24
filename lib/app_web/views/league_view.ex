defmodule AppWeb.LeagueView do
  use AppWeb, :view

  def render("index.json", %{leagues: records}) do
    %{
      entries: render_many(records, __MODULE__, "record.json"),
      page_number: records.page_number,
      page_size: records.page_size,
      total_pages: records.total_pages,
      total_entries: records.total_entries
    }
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
