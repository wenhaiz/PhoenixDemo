defmodule HelloWeb.WenHaiController do
  use HelloWeb, :controller

  def index(conn,_params) do
    render(conn,"index.html")
  end
end
