class Stainless < Formula
  desc "Verification framework and tool for higher-order Scala programs"
  homepage "https://epfl-lara.github.io/stainless/"
  version "0.9.9.1"    # must bump manually for now
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/epfl-lara/stainless/releases/download/v#{version}/stainless-dotty-standalone-#{version}-mac-x64.zip"
      sha256 "5eff1aeaabca68c0562f48cf556c780d50111c3a796e2bce1471029d17772219"
    elsif Hardware::CPU.arm?
      url "https://github.com/epfl-lara/stainless/releases/download/v#{version}/stainless-dotty-standalone-#{version}-mac-arm64.zip"
      sha256 "13b5f0f0cc8e5a282513d9e49922b61a95dd391d78f136e110f70bce7b17e8e0"
    end
  end

  def install
    libexec.install Dir["*"]

    bin.install_symlink libexec/"stainless" => "stainless"
    bin.install_symlink libexec/"stainless-cli" => "stainless-cli"

    chmod 0755, libexec/"stainless"
    chmod 0755, libexec/"stainless-cli"
  end

  test do
    assert_match "[  Info  ] Stainless verification tool (https://github.com/epfl-lara/stainless)
[  Info  ]   Version: 0.9.9.1
[  Info  ]   Built at: 2025-09-05 18:25:54.473+0200
[  Info  ]   Stainless Scala version: 3.7.2
[  Info  ] Inox solver (https://github.com/epfl-lara/inox)
[  Info  ] Version: 1.1.5-208-g467725e
[  Info  ] Bundled Scala compiler: 3.7.2" shell_output("#{bin}/stainless --version")
    # todo
  end
end
