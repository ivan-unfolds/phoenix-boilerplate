# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :widget_spike,
  ecto_repos: [WidgetSpike.Repo]

# Configures the endpoint
config :widget_spike, WidgetSpike.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5zz4cvDmqtYMX7s6GEfK9ZweW6jTYtMvYP1jhx1KQwPIi33IfXv2ESo1w2IWUxaq",
  render_errors: [view: WidgetSpike.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WidgetSpike.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
