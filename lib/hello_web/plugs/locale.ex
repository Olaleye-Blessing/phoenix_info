# Module plugs are another type of plug that let us define a connection transformation in a module.
# The module only needs to implement two functions:

# init/1 which initializes any arguments or options to be passed to call/2
# call/2 which carries out the connection transformation. call/2 is just a function plug like plug introspect/2 in endpoint.ex

defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en", "fr", "de"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    IO.inspect(conn)
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
