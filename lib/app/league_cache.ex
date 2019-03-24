defmodule App.LeagueCache do
  @moduledoc ~S"""
  Simple server that builds and servers all the data in the file.

  """
  use GenServer

  alias App.FileService

  # Client

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def get_by(league, season) do
    GenServer.call(__MODULE__, {:get_by, league, season})
  end

  def all() do
    GenServer.call(__MODULE__, :all)
  end

  # Server

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call({:get_by, league, season}, _from, state) do
    {:reply, FileService.get_by(state, league, season), state}
  end

  @impl true
  def handle_call(:all, _from, state) do
    {:reply, FileService.all(state), state}
  end
end
