import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cowboy_tester, CowboyTesterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qlVIVTE66iIywGNR5pDK2ibQNvXGBvyJhnXPTAjw1XuFGjftziNE7RtMCXfsn1Fe",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
