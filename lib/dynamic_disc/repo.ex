defmodule DynamicDisc.Repo do
  use Ecto.Repo,
    otp_app: :dynamic_disc,
    adapter: Ecto.Adapters.SQLite3
end
