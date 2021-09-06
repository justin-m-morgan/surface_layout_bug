defmodule Throwaway.Repo do
  use Ecto.Repo,
    otp_app: :throwaway,
    adapter: Ecto.Adapters.Postgres
end
