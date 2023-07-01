defmodule RelaygacyWeb.WelcomeController do
  use RelaygacyWeb, :controller

  def home(conn, _params) do
    render(conn, "welcome.html")
  end
end
