defmodule Relaygacy.Repo do
  use Ecto.Repo,
    otp_app: :relaygacy,
    adapter: Ecto.Adapters.Postgres
end
