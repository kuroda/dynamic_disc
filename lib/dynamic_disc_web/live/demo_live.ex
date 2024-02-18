defmodule DynamicDiscWeb.DemoLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:diameter, 100)
      |> assign(:bg_color, "")

    {:ok, socket}
  end
end
