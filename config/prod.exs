use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, TodoApp.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_todo_app_key",
  session_secret: "YB+98Y!3R+MYQ110S#6#C6N3S(4LI1Z1=WQ(L12_)2$&^X&7UO^*_IK#K7)I^PZ5%UF%1^_I"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

