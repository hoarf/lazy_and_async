defmodule AppWeb.DefaultController do
  use AppWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: "/leagues")
  end
end
