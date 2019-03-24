defmodule App.FileService do
  @moduledoc ~S"""
  Module that integrates the non pure parts with the pure parts of the system.
  """
  @path Keyword.get(Application.get_env(:app, App.IO), :file, "")

  @doc ~S"""

  Reads the configured file in a best effort way, that is, ignores the errors
  and uses only the valid records."

  The :id key is appended to the list of the fields so it can be captured by CSV
  parser, but since we don't have a database, we don't have any use for it.

  """
  def load_records do
    path()
    |> File.stream!()
    |> Stream.drop(1)
    |> CSV.decode(headers: [:id | App.Record.fields()])
    |> Stream.map(&App.Parser.parse/1)
    |> App.Parser.chunk()
    |> Stream.map(&App.Instrumentation.dump_errors/1)
    |> Enum.to_list()
    |> List.flatten()
  end

  @doc ~S"""

  ## Examples

      iex> App.FileService.all([%App.Record{league: "DF1", season: "201617"}])
      {:ok, [%App.Record{league: "DF1", season: "201617"}]}

  """
  def all(records) do
    {:ok, records}
  end

  @doc ~S"""

  ## Examples

      iex> App.FileService.get_by([
      ...> %App.Record{league: "DF1", season: "201617"},
      ...> %App.Record{league: "DF2", season: "201618"}], "DF1", "201617")
      {:ok, [%App.Record{league: "DF1", season: "201617"}]}

      iex> App.FileService.get_by([], "DF1", "201617")
      {:ok, []}

      iex> App.FileService.get_by([
      ...> %App.Record{league: "DF2", season: "201617"}], "DF1", "201617")
      {:ok, []}

      iex> App.FileService.get_by([
      ...> %App.Record{league: "DF1", season: "201718"}], "DF1", "201617")
      {:ok, []}

  """
  def get_by(records, league, season) do
    {:ok, Enum.filter(records, &(&1.league == league and &1.season == season))}
  end

  defp path(), do: Application.app_dir(:app, @path)
end
