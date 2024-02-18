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
      |> assign(:diameter, Enum.random(50..300))
      |> assign(:bg_color, "")

    {:noreply, socket}
  end

  @class_tokens ~w(
    bg-red-500
    rounded-full
    cursor-pointer
  )

  defp get_class() do
    Enum.join(@class_tokens, " ")
  end
end
