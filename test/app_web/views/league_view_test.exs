defmodule AppWeb.LeagueViewTest do
  use AppWeb.ConnCase, async: true

  describe "render league" do
    test "renders a JSON response" do
      record = %App.Record{
        season: "D1",
        league: "201617",
        hometeam: "Barcelona",
        awayteam: "Liverpool",
        date: "Date",
        fthg: "?",
        htr: "?",
        htag: "?"
      }

      response = %{
        season: "D1",
        league: "201617",
        hometeam: "Barcelona",
        awayteam: "Liverpool"
      }

      assert response === AppWeb.LeagueView.render("record.json", %{league: record})
    end
  end
end
