class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.0/sanity_0.9.0_darwin_arm64.tar.gz"
      sha256 "4f6eb5926ce590002ad0f06b42f77c827d031245d5e91e24941e231887083d0a"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.0/sanity_0.9.0_darwin_amd64.tar.gz"
      sha256 "11c5064e2210e24f8dc447e4879ef1e7e884d9bfccc2bdbaa7439d60febbbb0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.0/sanity_0.9.0_linux_arm64.tar.gz"
      sha256 "a9a942b23ae8c0ce0893c1fb54841e865706ed5865726b2c19e5115482292454"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.0/sanity_0.9.0_linux_amd64.tar.gz"
      sha256 "39f2cbb3d3a08402375a8b01f8b009c01390a54f7d2c03c6cddddeb5b637fa13"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
