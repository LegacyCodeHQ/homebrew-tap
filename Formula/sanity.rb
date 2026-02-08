class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.0/sanity_0.12.0_darwin_arm64.tar.gz"
      sha256 "3cf658bdda38a71c572ae696d01d5add3bbd418856d9351d4479ac59cda07da1"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.0/sanity_0.12.0_darwin_amd64.tar.gz"
      sha256 "9de72ea57e5bdb79dbfc9db8e1fe4488b2310fa942b25d42d7b32c2181c29cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.0/sanity_0.12.0_linux_arm64.tar.gz"
      sha256 "ad1f3ce5a2dfd5eb181ac3d997684682dc6ffc2bc9c6d4a37081c4f4f25bc192"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.0/sanity_0.12.0_linux_amd64.tar.gz"
      sha256 "5cc2ffcb25ecffa4b57db35fb87cb162daadf722ab1df4bbcab7d4f4e4bb9779"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
