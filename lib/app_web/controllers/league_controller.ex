defmodule AppWeb.LeagueController do
  use AppWeb, :controller

  def index(conn, %{"league" => league, "season" => season, "page" => page}) do
    index_for(conn, App.League.list(league, season, page))
  end

  def index(conn, %{"league" => league, "season" => season}) do
    index_for(conn, App.League.list(league, season))
  end

  def index(conn, %{"page" => page}) do
    index_for(conn, App.League.list(nil, nil, page))
  end

  def index(conn, _params) do
    index_for(conn, App.League.list(nil, nil))
  end

  defp index_for(conn, {:ok, records}) do
    conn
    |> put_status(:ok)
    |> render("index.json", leagues: records)
  end
end
