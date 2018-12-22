defmodule Rainbeta.Repo do
  use Ecto.Repo,
    otp_app: :rainbeta,
    adapter: Ecto.Adapters.Postgres
end
