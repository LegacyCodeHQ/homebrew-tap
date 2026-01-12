class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.3.0/sanity_0.3.0_darwin_arm64.tar.gz"
      sha256 "fff98717886c96757364e324a08716b5868f6a95e714161fd98a547fc7aeb34c"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.3.0/sanity_0.3.0_darwin_amd64.tar.gz"
      sha256 "3292f463f7d3b6d07a1c3be88ba6fee1e65dc3dbc1dfa677bd05d24a80292727"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.3.0/sanity_0.3.0_linux_arm64.tar.gz"
      sha256 "8cc94c5cd5e8c6358cf19770edcb04c338bacae050e7a22d6178a83b50ef66c4"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.3.0/sanity_0.3.0_linux_amd64.tar.gz"
      sha256 "324293f0ea9c991ff65beb85217e9b54a3cc83d16cbd5afb384416b46bc493bd"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
