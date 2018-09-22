defmodule FootballApi.ResultController do
  use FootballApi.Web, :controller

  def index(conn, _params) do
  	combinations = Repo.season_div_combinations

    json conn, combinations
  end

  def show(conn, %{"season" => season, "div" => division}) do
  	results = Repo.results(season, division)

  	json conn, results
  end
end
