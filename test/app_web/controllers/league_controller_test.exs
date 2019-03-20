defmodule AppWeb.PageControllerTest do
  use AppWeb.ConnCase

  describe "GET /leagues" do
    test "should return a list with all the leagues", %{conn: conn} do
      assert 2371 =
               conn
               |> get("/leagues")
               |> json_response(:ok)
               |> Enum.count()
    end
  end

  describe "GET /leagues/id/season/id" do
    test "should return a list with all the leagues that matches", %{conn: conn} do
      assert 306 =
               conn
               |> get("/leagues/D1/seasons/201617")
               |> json_response(:ok)
               |> Enum.count()
    end

    test "should return a empty list when no matches", %{conn: conn} do
      assert 0 =
               conn
               |> get("/leagues/D1/seasons/NOPE")
               |> json_response(:ok)
               |> Enum.count()
    end
  end
end
