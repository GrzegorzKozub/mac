set -e -o verbose

# erlang and elixir

brew install elixir

mix local.hex --force
mix local.rebar --force
mix archive.install hex phx_new --force

