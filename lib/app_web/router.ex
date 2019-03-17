defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", AppWeb do

    get "/", PageController, :index
  end
end
