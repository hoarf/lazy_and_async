defmodule AppWeb.PageController do
  use AppWeb, :controller

  def index(conn, %{league: league, season: season}) do
    with {:ok, records} <- App.League.get_by(league, season) do
      conn
      |> put_status(:ok)
      |> render("index.json", records: records)
    end
  end
end
