class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.12.3"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.3/sanity_0.12.3_darwin_arm64.tar.gz"
      sha256 "e73de92049905d1c6e4ad4f16435b97414af2133b49b993b27a208f4960a309b"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.3/sanity_0.12.3_darwin_amd64.tar.gz"
      sha256 "c776e57358405eaae8dec98c0dae7d1d55b31b7bacb1712635b6c14a9ee9356b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.3/sanity_0.12.3_linux_arm64.tar.gz"
      sha256 "2439a79984b8f1521fadfb8b6cde7e51bb838ca2611c5151ec494ebb0ccd0bfd"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.3/sanity_0.12.3_linux_amd64.tar.gz"
      sha256 "b40bd1745e9788e028032c7fef8bdacde2cc78b99859d227624bb45790cb74c1"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
