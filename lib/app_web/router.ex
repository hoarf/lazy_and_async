defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", AppWeb do
    pipe_through(:api)

    # This route is used for health check by haproxy.
    get("/", DefaultController, :index)
    get("/leagues", LeagueController, :index)
    get("/leagues/:league/seasons/:season", LeagueController, :index)
  end
end
