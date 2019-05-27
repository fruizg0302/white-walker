defmodule WhiteWalkerWeb.PageController do
  use WhiteWalkerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
