defmodule ERP.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :erp,
      version: "0.10.4",
      elixir: "~> 1.7",
      description: "ERP Enterprise Resource Planning",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc lib include src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :erp,
      links: %{"GitHub" => "https://github.com/erpuno/erp"}
    ]
  end

  def application() do
    [mod: {:erp, []}]
  end

  def deps() do
    [
      {:dec, "~> 0.10.2"},
      {:kvs, "~> 6.10.0"},
      {:rocksdb, "~> 1.3.2"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
