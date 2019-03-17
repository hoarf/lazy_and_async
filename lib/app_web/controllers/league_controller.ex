defmodule AppWeb.LeagueController do
  use AppWeb, :controller

  def index(conn, _params) do
    with {:ok, records} <- App.League.list() do
      conn
      |> put_status(:ok)
      |> render("index.json", leagues: records)
    end
  end

  def show(conn, %{"league" => league, "season" => season}) do
    with {:ok, records} <- App.League.get_by(league, season) do
      conn
      |> put_status(:ok)
      |> render("show.json", league: records)
    end
  end
end
