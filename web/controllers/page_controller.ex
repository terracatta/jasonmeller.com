defmodule Meller.PageController do
  use Meller.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
