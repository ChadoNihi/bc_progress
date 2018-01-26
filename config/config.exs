# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :bc_progress, BcProgressWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D7b0m+vQGFFq9fdpJrysmS+1J2EGmOQCio++/FRskFrafBBIxxgXY3S7PmaqWC1Y",
  render_errors: [view: BcProgressWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BcProgress.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
