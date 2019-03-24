defmodule AppWeb.PageControllerTest do
  use AppWeb.ConnCase

  describe "GET /leagues" do
    test "accepts a request for all leagues" do
      conn =
        build_conn()
        |> get("/leagues")
        |> doc(operation_id: "list_leagues")

      assert conn.status == 200
    end

    test "accepts page as a query param" do
      conn =
        build_conn()
        |> get("/leagues?page=2")
        |> doc(operation_id: "list_leagues")

      assert conn.status == 200
    end
  end

  describe "GET /leagues/id/season/id" do
    test "accepts a request with league and season params" do
      conn =
        build_conn()
        |> get("/leagues/D1/seasons/201617")
        |> doc(operation_id: "list_leagues")

      assert conn.status == 200
    end

    test "accepts page as a query param" do
      conn =
        build_conn()
        |> get("/leagues/D1/seasons/NOPE?page=3")
        |> doc(operation_id: "list_leagues")

      assert conn.status == 200
    end

    test "returns ok even when there is not matching league" do
      conn =
        build_conn()
        |> get("/leagues/D1/seasons/NOPE")
        |> doc(operation_id: "list_leagues")

      assert conn.status == 200
    end
  end
end
