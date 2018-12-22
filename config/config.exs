# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rainbeta,
  ecto_repos: [Rainbeta.Repo]

# Configures the endpoint
config :rainbeta, RainbetaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9alxlZlxHl7C4O0+4vTcAry1wAs20Fpocc8MRP/3iB1GB2vrPZ0TdtE3Zy23t4DN",
  render_errors: [view: RainbetaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rainbeta.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
