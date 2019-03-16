defmodule AppTest.Parser do
  use ExUnit.Case

  describe "when receiving a valid stream" do
    test "returns a chunk of records and errors" do
      [%{ok: records, error: errors}] =
        [[ok: [1, 2]], [error: "bad"], [ok: [3, 4]], [error: "super"]]
        |> Stream.map(& &1)
        |> App.Parser.chunk()
        |> Enum.to_list()

      assert [[3, 4], [1, 2]] == records
      assert ["super", "bad"] == errors
    end
  end

  describe "when receiving an empty stream" do
    test "returns a empty chunk of records and errors" do
      [%{ok: records, error: errors}] =
        []
        |> Stream.map(& &1)
        |> App.Parser.chunk()
        |> Enum.to_list()

      assert [] == records
      assert [] == errors
    end
  end

  describe "when receiving a valid raw record" do
    test "it returns a structure" do
      assert [ok: _] = App.Parser.parse(ok: ["SP1", "201617"])
    end
  end

  describe "when receiving an invalid raw record" do
    test "it does nothing" do
      assert [error: _] = App.Parser.parse(error: "This should be ignored.")
    end
  end
end
