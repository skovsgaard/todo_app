# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, TodoApp.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_todo_app_key",
  session_secret: "YB+98Y!3R+MYQ110S#6#C6N3S(4LI1Z1=WQ(L12_)2$&^X&7UO^*_IK#K7)I^PZ5%UF%1^_I",
  catch_errors: true,
  debug_errors: false,
  error_controller: TodoApp.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
