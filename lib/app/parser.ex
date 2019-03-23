defmodule App.Parser do
  @moduledoc ~S"""
  Module responsible for receiving a stream of raw strings and
  converting into structured data.
  """

  require Logger

  @doc ~S"""
  Chunk will partition the stream into records and errors.

  """
  def chunk(stream) do
    Stream.chunk_while(stream, %{oks: [], errors: []}, &chunk_fn/2, &after_fn/1)
  end

  defp chunk_fn(item, acc) do
    case item do
      [ok: result] -> {:cont, %{acc | oks: [result | acc.oks]}}
      [error: result] -> {:cont, %{acc | errors: [result | acc.errors]}}
    end
  end

  defp after_fn(acc), do: {:cont, acc, []}

  @doc ~S"""
  Parses a record from the CSV into the internal representation for the system
  which is %App.Record. It will ignore errors from CSV.

  """
  def parse({:ok, params}) do
    case App.Record.file_changeset(params) do
      %{valid?: true} = changeset ->
        [ok: Ecto.Changeset.apply_changes(changeset)]

      changeset ->
        [error: changeset]
    end
  end

  def parse(parse_error), do: parse_error
end
