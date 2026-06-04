class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.25.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.25.0/clarity_0.25.0_darwin_arm64.tar.gz"
      sha256 "265a276f87fa1d4c3ec33d141ed9c2dcd32d3ed53e1d175223683757492fe0d4"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.25.0/clarity_0.25.0_darwin_amd64.tar.gz"
      sha256 "4e53afd025526c51d27317d832b54a39c13ceebfa0171cf2e3922766c1f411e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.25.0/clarity_0.25.0_linux_arm64.tar.gz"
      sha256 "25d115c55ba2c51e0ed72025c06211c6f1bf14a2ce43393cf23c7d4d9692990f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.25.0/clarity_0.25.0_linux_amd64.tar.gz"
      sha256 "1787fbaa310ac92b34e865b2d93df8baf2ca5820878a8ae8d4f8789cedb14743"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
