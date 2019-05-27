defmodule WhiteWalker.Repo do
  use Ecto.Repo,
    otp_app: :white_walker,
    adapter: Ecto.Adapters.Postgres
end
