defmodule AppWeb.PageControllerTest do
  use AppWeb.ConnCase

  describe "GET /leagues" do
    test "should accept a request for all the leagues" do
      conn =
        build_conn()
        |> get("/leagues")
        |> doc

      assert conn.status == 200
    end
  end

  describe "GET /leagues/id/season/id" do
    test "should accept a request with league and season id params" do
      conn =
        build_conn()
        |> get("/leagues/D1/seasons/201617")
        |> doc

      assert conn.status == 200
    end

    test "should return a empty list when no matches" do
      conn =
        build_conn()
        |> get("/leagues/D1/seasons/NOPE")
        |> doc

      assert conn.status == 200
    end
  end
end
