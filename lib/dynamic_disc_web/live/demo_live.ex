defmodule DynamicDiscWeb.DemoLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:diameter, 100)
      |> assign(:bg_color, "bg-red-500")

    {:ok, socket}
  end

  @background_colors ~w(
    bg-red-500
    bg-green-500
    bg-blue-500
    bg-cyan-500
  )

  def handle_event("change_state", _params, socket) do
    bg_color =
      Enum.random(@background_colors -- [socket.assigns.bg_color])

    socket =
      socket
      |> assign(:diameter, Enum.random(50..300))
      |> assign(:bg_color, bg_color)

    {:noreply, socket}
  end

  @class_tokens ~w(
    rounded-full
    cursor-pointer
    translate-all
    duration-1000
  )

  defp get_class(bg_color) do
    tokens = [bg_color | @class_tokens]
    Enum.join(tokens, " ")
  end
end
