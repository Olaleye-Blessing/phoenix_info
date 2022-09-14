defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  # conn is a struct that holds a lot of data about the request
  # params are the request parameters
  def index(conn, _params) do
    # this renders a view
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
end
