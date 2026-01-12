class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.1/sanity_0.2.1_darwin_arm64.tar.gz"
      sha256 "82e238f00e1da21ca3f46bd78cb6620d4b9349fafffe5b01bb45f2a0eaa536ad"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.1/sanity_0.2.1_darwin_amd64.tar.gz"
      sha256 "7884a191e527642dd533aea17f8a51f7f2280241d547a59c1973bf4b3f9525aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.1/sanity_0.2.1_linux_arm64.tar.gz"
      sha256 "f72830d1c3d6dacce8c932d7513050410c41f34aa26926363c1e8ebfde0a72e5"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.1/sanity_0.2.1_linux_amd64.tar.gz"
      sha256 "c4e2c30ed036f585321607ef190039973a97899c0f838a93cbc66e35dbc17dad"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
