class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.30.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.1/clarity_0.30.1_darwin_arm64.tar.gz"
      sha256 "91a7068010e54e61a013cb5d478da8745dce8d8fa3abe51546b0f4f1587c4083"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.1/clarity_0.30.1_darwin_amd64.tar.gz"
      sha256 "8394fb75e89c4d0b654e2c3ad3b8e45a278f54c6304a37a0344b5971e5662a5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.1/clarity_0.30.1_linux_arm64.tar.gz"
      sha256 "031f83c9b02b31f6a5b62efa35fef48ae0a366950bb7aede8a906a7fa34497fa"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.1/clarity_0.30.1_linux_amd64.tar.gz"
      sha256 "6f0e318490001a32c397477be1f335d2701b5a6bd0311f7d3aa0a51fa7bc4570"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
