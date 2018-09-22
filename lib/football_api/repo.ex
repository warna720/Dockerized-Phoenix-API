defmodule FootballApi.Repo do
  use Ecto.Repo, otp_app: :football_api

  def season_div_combinations do
	File.stream!("data/data.csv")
	|> CSV.decode!(headers: true)
	|> Enum.drop(1)
	|> Enum.map(fn(game) -> %{season: game["Season"], div: game["Div"]} end)
	|> Enum.uniq
  end

  def results(season, division) do
  	[season, division]

	File.stream!("data/data.csv")
	|> CSV.decode!(headers: true)
	|> Enum.drop(1)
	|> Enum.filter(fn(game) -> season == game["Season"] && division == game["Div"] end)
  end
end
