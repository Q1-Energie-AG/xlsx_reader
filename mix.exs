defmodule XlsxReader.MixProject do
  use Mix.Project

  def project do
    [
      app: :xlsx_reader,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      dialyzer: [
        plt_ignore_apps: [:saxy]
      ],
      # Docs
      homepage_url: "https://github.com/xavier/xlsx_reader",
      source_url: "https://github.com/xavier/xlsx_reader",
      docs: [
        main: "XlsxReader",
        logo: "assets/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:saxy, "~> 1.0.0"},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:decimal, "~> 1.0", optional: true},
      {:dialyxir, "~> 1.0.0-rc.7", only: :dev, runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp description do
    "XLSX file reader for Elixir"
  end

  defp package do
    %{
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/xavier/xlsx_reader"}
    }
  end
end
