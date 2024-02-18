defmodule DynamicDiscWeb.DemoLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:diameter, 100)
      |> assign(:bg_color, "bg-red-500")

    {:ok, socket}
  end

  def handle_event("change_state", _params, socket) do
    socket =
      socket
      |> assign(:diameter, Enum.random(50..300))
      |> assign(:bg_color, "bg-red-500")

    {:noreply, socket}
  end

  @class_tokens ~w(
    rounded-full
    cursor-pointer
  )

  defp get_class(bg_color) do
    tokens = [bg_color | @class_tokens]
    Enum.join(tokens, " ")
  end
end
