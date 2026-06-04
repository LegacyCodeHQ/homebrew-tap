class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.24.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.1/clarity_0.24.1_darwin_arm64.tar.gz"
      sha256 "f3bbe63262c7cc21da3348d8074793b7f35421e40a68620be67862f3ae86237d"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.1/clarity_0.24.1_darwin_amd64.tar.gz"
      sha256 "0190efaf3dbda1b5eadcc7c3eedea07635a66940a7995580535ded29a9c9b9a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.1/clarity_0.24.1_linux_arm64.tar.gz"
      sha256 "db796b1576f224a250f55f42fa8bc08352b67b5d39c62bab99b439f01ef1b363"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.1/clarity_0.24.1_linux_amd64.tar.gz"
      sha256 "7fd2f61c725a2ad03add6d42db42132b79c008c73bd5ca20d4351f9dfc50a1d5"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
