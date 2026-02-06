class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.1/sanity_0.10.1_darwin_arm64.tar.gz"
      sha256 "95f4eebd3a98e7c4e266938d7cc2bc4ca0e4d87981cf5381f3402fca307defbd"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.1/sanity_0.10.1_darwin_amd64.tar.gz"
      sha256 "656951d8a39adff691cf04d0426847d3f017144f3395c6ecd5197cd27ed3cc89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.1/sanity_0.10.1_linux_arm64.tar.gz"
      sha256 "13817357d090b09faeededcb7bd4e83b8ed1589a8d3815765d56fdebbec5d263"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.1/sanity_0.10.1_linux_amd64.tar.gz"
      sha256 "58204231a1bbec9ebc5dbad109e3a1b3cc31b05974ad304ae2cbbf9528adc4db"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
