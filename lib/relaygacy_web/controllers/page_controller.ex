defmodule RelaygacyWeb.PageController do
  use RelaygacyWeb, :controller

  def home(conn, _params) do
    render(conn, "welcome.html")
  end

  def events(conn, _params) do
    render(conn, "events.html")
  end

  def resources(conn, _params) do
    render(conn, "resources.html")
  end

  def tools(conn, _tools) do
    render(conn, "tools.html")
  end

  def credits(conn, _params) do
    render(conn, "credits.html")
  end

  def twinklestar(conn, _params) do
    render(conn, "twinklestar.html")
  end

  def kiohgyoku(conn, _params) do
    render(conn, "kiohgyoku.html")
  end

  def podd(conn, _params) do
    render(conn, "podd.html")
  end

  def pofv(conn, _params) do
    render(conn, "pofv.html")
  end

  def udoalg(conn, _params) do
    render(conn, "udoalg.html")
  end

  def splitter(conn, _params) do
    path =  Application.app_dir(:relaygacy, "priv/static/files/splitter_presets.xml")
    conn |> send_download({:file, path})
  end
end
