class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.4.0/sanity_0.4.0_darwin_arm64.tar.gz"
      sha256 "a2583774311b6f900c66fa112385d509113cd31db4bd76347ee75ff891dcc71e"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.4.0/sanity_0.4.0_darwin_amd64.tar.gz"
      sha256 "63e612a4bb2174b70372aebd28cee29d5d03026d5a979ba31504b042aefdcf76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.4.0/sanity_0.4.0_linux_arm64.tar.gz"
      sha256 "feb944ca4941f01afe258a3fd425d2479ce546af4213dd492e7c2fc3f5d6d33b"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.4.0/sanity_0.4.0_linux_amd64.tar.gz"
      sha256 "0f27a90df8bc3ef2a05e8640e25cbdb24a34dd3e9a20f1c923c0e2b6115295de"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
