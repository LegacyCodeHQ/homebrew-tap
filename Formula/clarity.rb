class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.33.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.0/clarity_0.33.0_darwin_arm64.tar.gz"
      sha256 "a6e69823a58eb0e28f0e25e743a6d9e33c57f0b192774596c5074c5c641d2f8e"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.0/clarity_0.33.0_darwin_amd64.tar.gz"
      sha256 "0f2360a0077cc2d1d6cf34cb00d53dab17a09fece511a80357b84c1c513c08e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.0/clarity_0.33.0_linux_arm64.tar.gz"
      sha256 "8db8f8a3b2e9bcb1720ba063ab5e13913e39b571f9a30ed54c19cf25f551c631"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.0/clarity_0.33.0_linux_amd64.tar.gz"
      sha256 "d41642fe1f2255ec5545f7ab2deec75be041bca044e43cc4969970e617921451"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
