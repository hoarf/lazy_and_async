defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", AppWeb do
    pipe_through(:api)

    get("/leagues", LeagueController, :index)
    get("/leagues/:league/seasons/:season", LeagueController, :show)
  end
end
