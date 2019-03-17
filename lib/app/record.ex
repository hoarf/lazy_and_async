defmodule App.Record do
  @moduleloc """
  Module that contains the data structure that holds the league and season info.
  """
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:league, :season, :date, :hometeam, :awayteam, :fthg, :ftag, :ftr, :hthg, :htag, :htr]

  schema "record" do
    field(:league)
    field(:season)
    field(:hometeam)
    field(:awayteam)
    field(:fthg)
    field(:ftag)
    field(:ftr)
    field(:date)
    field(:hthg)
    field(:htag)
    field(:htr)
  end

  @doc ~S"""

  ## Examples

      iex> App.Record.file_changeset(%{season: "DF1"})
      %{changes: %{season: "DF1"}}

  """
  def file_changeset(params) do
    %__MODULE__{}
    |> cast(params, fields())
  end

  def fields, do: @fields
end
