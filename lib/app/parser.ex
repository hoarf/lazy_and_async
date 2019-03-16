defmodule App.Parser do
  @moduledoc """
  Module responsible for receiving a stream of raw strings and
  converting into structured data.
  """

  require Logger

  @doc """
  Chunk will partition the stream into records an errors.

  """
  def chunk(stream) do
    Stream.chunk_while(stream, %{oks: [], errors: []}, &chunk_fn/2, &after_fn/1)
  end

  def parse({:ok, %{"Div" => league, "Season" => season}}) do
    case App.Record.file_changeset(%{league: league, season: season}) do
      %{valid?: true} = changeset ->
        [ok: Ecto.Changeset.apply_changes(changeset)]

      changeset ->
        [error: changeset]
    end
  end

  def parse(parse_error), do: parse_error

  defp chunk_fn(item, acc) do
    case item do
      [ok: result] -> {:cont, %{acc | oks: [result | acc.oks]}}
      [error: result] -> {:cont, %{acc | errors: [result | acc.errors]}}
    end
  end

  defp after_fn(acc), do: {:cont, acc, []}
end
