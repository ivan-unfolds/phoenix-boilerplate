defmodule WidgetSpike.Web.PageController do
  use WidgetSpike.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
