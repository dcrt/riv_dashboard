defmodule Rif.Mixfile do
  use Mix.Project

  def project do
    [app: :rif,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [applications: [:logger, :kitto, :httpotion, :floki]]
  end

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:kitto, "~> 0.6.0"},
     {:httpotion, "~> 3.0.2"},
     {:floki, "~> 0.18.0"},
     {:distillery, "1.3.1"}]
  end
end
