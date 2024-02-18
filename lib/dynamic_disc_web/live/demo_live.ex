defmodule DynamicDiscWeb.DemoLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:diameter, 100)
      |> assign(:bg_color, "")

    {:ok, socket}
  end

  def handle_event("change_state", _params, socket) do
    socket =
      socket
      |> assign(:diameter, socket.assigns.diameter + 50)
      |> assign(:bg_color, "")

    {:noreply, socket}
  end
end
