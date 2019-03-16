defmodule App.Record do
  @moduleloc """
  Module that contains the data structure that holds the league and season info.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "record" do
    field(:league)
    field(:season)
  end

  def file_changeset(params) do
    %__MODULE__{}
    |> cast(params, [:league, :season])
  end
end
