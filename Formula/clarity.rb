class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.27.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.27.0/clarity_0.27.0_darwin_arm64.tar.gz"
      sha256 "1befb191103f24eddda31680fc5496c139a0f9a32ce4ab5390b40cd1f22cdf2c"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.27.0/clarity_0.27.0_darwin_amd64.tar.gz"
      sha256 "504ee6ea579b9fabd356d3b3065b13c3ec26f5925712d2e5f28f3bbff61bf1ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.27.0/clarity_0.27.0_linux_arm64.tar.gz"
      sha256 "0da733b23ebf39a569d82d806f248ed72a60ab1047c30740c060cc89d046de11"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.27.0/clarity_0.27.0_linux_amd64.tar.gz"
      sha256 "f0a4ad3e419da10732ba7bc2730023c881022760eebc943024534714995b6f12"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
