# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :white_walker,
  ecto_repos: [WhiteWalker.Repo]

# Configures the endpoint
config :white_walker, WhiteWalkerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uEn2FbAAqbMFomb/5Hg8p/rUOy8RJazGT7mPUhxyzxY2Zfzi2D8K8toh1Im9zvfc",
  render_errors: [view: WhiteWalkerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WhiteWalker.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
