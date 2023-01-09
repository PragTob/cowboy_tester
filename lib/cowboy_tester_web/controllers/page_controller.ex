defmodule CowboyTesterWeb.PageController do
  use CowboyTesterWeb, :controller

  def index(conn, _params) do
    :timer.sleep(5_000)
    IO.puts("IT HAPPENED")
    render(conn, "index.html")
  end
end
