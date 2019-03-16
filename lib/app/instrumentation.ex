defmodule App.Instrumentation do
  @moduledoc """
  Handles all the instrumentation and reporting of the File Service.

  """

  require Logger

  @doc """
  There will be two kinds of errors in the list of errors, the parsing errors
  and the validation errors.

  """
  def dump_errors(%{oks: records, errors: errors}) do
    case errors do
      [] ->
        Logger.info("No errors! #{Enum.count(records)} parsed!")

      _ ->
        Logger.warn(format(errors))
    end

    records
  end

  defp format(%Ecto.Changeset{} = errors), do: inspect(errors)
  defp format(errors) when is_bitstring(errors), do: errors
end
