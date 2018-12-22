use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rainbeta, RainbetaWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :rainbeta, Rainbeta.Repo,
  username: "postgres",
  password: "postgres",
  database: "rainbeta_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
