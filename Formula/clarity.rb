class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.16.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.0/clarity_0.16.0_darwin_arm64.tar.gz"
      sha256 "d416d6500cf309907aa353f181304343028cc08f43863eb8e91a4fd4d9dbea9d"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.0/clarity_0.16.0_darwin_amd64.tar.gz"
      sha256 "817fab652e14b9b5056850408d1f2b36a1c264f8cc332ea53718151569210d8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.0/clarity_0.16.0_linux_arm64.tar.gz"
      sha256 "37f7904c3c2e8fc462a7a9de19039901374b3c349e38acbab5feeebcd6d422c8"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.0/clarity_0.16.0_linux_amd64.tar.gz"
      sha256 "4f394f6132c8fee00c5ecde92aa2596b71a75736f163cca70bfbe365a11d751d"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
