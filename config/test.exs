use Mix.Config

config :phoenix, TodoApp.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_todo_app_key",
  session_secret: "YB+98Y!3R+MYQ110S#6#C6N3S(4LI1Z1=WQ(L12_)2$&^X&7UO^*_IK#K7)I^PZ5%UF%1^_I"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


