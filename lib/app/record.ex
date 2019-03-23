defmodule App.Record do
  @moduledoc ~S"""
  Module that contains the data structure that holds the league and season info.
  """
  use Ecto.Schema
  import Ecto.Changeset

  def fields,
    do: [:league, :season, :date, :hometeam, :awayteam, :fthg, :ftag, :ftr, :hthg, :htag, :htr]

  defp regular_fields(), do: for(f <- fields(), f != :date, do: f)

  schema "record" do
    field(:league)
    field(:season)
    field(:hometeam)
    field(:awayteam)
    field(:fthg)
    field(:ftag)
    field(:ftr)
    field(:date, :date)
    field(:hthg)
    field(:htag)
    field(:htr)
  end

  @doc ~S"""
  Changeset for input coming from the file. Always produces an insert as a change.

  Params should be a map with fields/0 as keys

  """
  def file_changeset(params) do
    %__MODULE__{}
    |> cast(params, regular_fields())
    |> cast_date(params)
  end

  defp cast_date(changeset, %{date: raw}) do
    with {:ok, date} <- Timex.parse(raw, "{0D}/{0M}/{YYYY}") do
      Ecto.Changeset.put_change(changeset, :date, date)
    else
      {:error, cause} ->
        Ecto.Changeset.add_error(changeset, :date, cause)
    end
  end
end
