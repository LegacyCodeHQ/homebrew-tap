class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.2/sanity_0.7.2_darwin_arm64.tar.gz"
      sha256 "1a3062d47d4823cad08882eeff8dce67b76e03ab3253ef57e5af08a5d5ff5441"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.2/sanity_0.7.2_darwin_amd64.tar.gz"
      sha256 "737d3d4c3140d2f625c52179c4193c79f9157bc3a710d7a689153060e72b9f13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.2/sanity_0.7.2_linux_arm64.tar.gz"
      sha256 "0b0effd2fb69b3b78ab90d54b755351751a71cb13e4be2b255f35e1c43a086fa"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.2/sanity_0.7.2_linux_amd64.tar.gz"
      sha256 "9860df7274c053e35383ed8f3ea0cb36d59af5549233c4607940d01cb406a4d4"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
