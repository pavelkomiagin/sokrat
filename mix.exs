defmodule Sokrat.Mixfile do
  use Mix.Project

  def project do
    [app: :sokrat,
     version: "1.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {Sokrat.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:hedwig_slack, "~> 1.0"},
     {:cowboy, "~> 1.0.0"},
     {:plug, "~> 1.0"},
     {:postgrex, ">= 0.0.0"},
     {:ecto, "~> 2.2"},
     {:httpoison, "~> 0.12.0"},
     {:timex, "~> 3.1"},
     {:logger_file_backend, "~> 0.0.10"},
     {:credo, "~> 0.8", only: [:dev, :test], runtime: false}]
  end
end
