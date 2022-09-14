defmodule HelloWeb.NetworkController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def basic(conn, %{"address" => address}) do
    # generate random number
    random_number = :rand.uniform(100)

    # any of the following will work
    # render(conn, "address.html", address: address, number: random_number)
    render(conn, "address.html", %{address: address, number: random_number})
  end
end
