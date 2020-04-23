# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :game,
  ecto_repos: [Game.Repo]

# Configures the endpoint
config :game, GameWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TUCJGJntYAuYecFvfoo23eIUpjTvydbMZOgAm4PedAX6VpaETbVLPvJ0GrRXsvGa",
  render_errors: [view: GameWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Game.PubSub,
  live_view: [signing_salt: "rGr0Lhuz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
