defmodule RainbetaWeb.PageController do
  use RainbetaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
