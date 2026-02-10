class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.13.3"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.3/clarity_0.13.3_darwin_arm64.tar.gz"
      sha256 "d390c67e93945510a124a0be4e826327bee3a24b41ea4f47d38c1639bd071b7e"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.3/clarity_0.13.3_darwin_amd64.tar.gz"
      sha256 "15700748d69a524e937641f4a8ba4c60acbaa37e3a9aa9c4ca81274f688bb24d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.3/clarity_0.13.3_linux_arm64.tar.gz"
      sha256 "9d29f44c0d0bc988147daf287f53036e1c6ca234d414fb1be5d9c9c261f2d6a6"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.3/clarity_0.13.3_linux_amd64.tar.gz"
      sha256 "819555c969e6966af399a2b8cfcf9f2f44dbd2c0af66cdf42c1f3f973b3b83cb"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
