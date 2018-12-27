defmodule CountdownWeb.PageController do
  use CountdownWeb, :controller

  alias Countdown.Events

  def index(conn, _params) do
    events = Events.list_future_events()
    render conn, "index.html", events: events, current_user: get_session(conn, :current_user) # Estos parametros se los pasamos para que sean usados en el index.html
  end
end
