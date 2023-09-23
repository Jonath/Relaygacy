defmodule RelaygacyWeb.Router do
  use RelaygacyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {RelaygacyWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RelaygacyWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/events", PageController, :events
    get "/resources", PageController, :resources
    get "/tools", PageController, :tools
    get "/credits", PageController, :credits
    get "/discord", PageController, :discord
    get "/games/twinklestar", PageController, :twinklestar
    get "/games/kiohgyoku", PageController, :kiohgyoku
    get "/games/podd", PageController, :podd
    get "/games/pofv", PageController, :pofv
    get "/games/udoalg", PageController, :udoalg
    get "/files/splitter", PageController, :splitter
  end

  # Other scopes may use custom stacks.
  # scope "/api", RelaygacyWeb do
  #   pipe_through :api
  # end
end
