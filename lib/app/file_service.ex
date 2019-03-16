defmodule App.FileService do
  @moduledoc """
  Module that integrates the non pure parts with the pure parts of the system.
  """
  @path Keyword.get(Application.get_env(:app, App.IO), :file, "")

  @doc """

  Reads the configured file in a best effort way, that is, ignores the errors
  and uses only the valid records."

  """
  def load_records do
    @path
    |> File.stream!()
    |> CSV.decode(headers: true)
    |> Stream.map(&App.Parser.parse/1)
    |> App.Parser.chunk()
    |> Stream.map(&App.Instrumentation.dump_errors/1)
  end
end
