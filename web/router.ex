defmodule FootballApi.Router do
  use FootballApi.Web, :router

 # pipeline :browser do
  #  plug :accepts, ["html"]
  #  plug :fetch_session
  #  plug :fetch_flash
  #  plug :protect_from_forgery
 #   plug :put_secure_browser_headers
#  end

  pipeline :api do
    plug :fetch_session
    plug :fetch_flash
    plug :accepts, ["json"]
  end


 # scope "/", FootballApi do
#    pipe_through :browser # Use the default browser stack

   # get "/", PageController, :index
  #end
  

  scope "/api/v1", FootballApi do
    pipe_through :api
    
    get "/results", ResultController, :index

    get "/results/:season/:div", ResultController, :show 
  end
end
