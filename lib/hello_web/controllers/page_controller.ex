defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # conn
    # |> put_root_layout("admin.html")
    # |> render("index.html")

    # render(conn,:index)
    # send_resp(conn,201,"")
    # conn
    # |> put_resp_content_type("text/plain")
    # |> send_resp(200,"hell")

    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")


  end
end
