# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :meller,
  ecto_repos: [Meller.Repo]

# Configures the endpoint
config :meller, Meller.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "wFmEHLNbCgNLibGMWwcB615YUZAeebMtd+myDiYbf9pFSrWx4T5NCdv325/5HkFO",
  render_errors: [view: Meller.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Meller.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
