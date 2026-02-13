class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.15.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.1/clarity_0.15.1_darwin_arm64.tar.gz"
      sha256 "35f33289e5ad94e9569605bedc6f6482c772cc7e07716fceb6769f4af464d605"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.1/clarity_0.15.1_darwin_amd64.tar.gz"
      sha256 "5216d103bbfa8e522caf3a03421021367306f967636a3fac2359a4c9e0f407e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.1/clarity_0.15.1_linux_arm64.tar.gz"
      sha256 "87014079bf20255d182eb0234ccb8f2c65f080c9a4dcdf3df88f2da156a16700"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.1/clarity_0.15.1_linux_amd64.tar.gz"
      sha256 "74efbada83c9bdb6187828e8d9b44b883d9c77373d3819af959a31ceb97ead38"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
