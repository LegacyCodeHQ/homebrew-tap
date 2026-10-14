class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.34.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.1/clarity_0.34.1_darwin_arm64.tar.gz"
      sha256 "449d35a2b76b23299ab83bb1cbd3844ef90202cfe5a4e2c56c8d2d539763ae88"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.1/clarity_0.34.1_darwin_amd64.tar.gz"
      sha256 "ff0aea0cf40f05865d4c21e4eea3484273e791eb58b587e00522b298b8fa8398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.1/clarity_0.34.1_linux_arm64.tar.gz"
      sha256 "0098a4f796fca1115786a6860e9cd8445b564b7c05cba40f7a4372472c52563f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.1/clarity_0.34.1_linux_amd64.tar.gz"
      sha256 "e524f7af971cdf68e17cb4c94002851456dc981a7e513cafa644be47a1169b26"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
