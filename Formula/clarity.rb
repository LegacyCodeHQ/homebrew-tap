class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.29.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.0/clarity_0.29.0_darwin_arm64.tar.gz"
      sha256 "59cbf7fe16449482fa9412f7d83d6245d8fa071802647000848e8d3c579fc980"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.0/clarity_0.29.0_darwin_amd64.tar.gz"
      sha256 "a01a21e3b2117bdd127b3f39d575e0da8cbe6855342722fea3d1ee467867169e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.0/clarity_0.29.0_linux_arm64.tar.gz"
      sha256 "0ab126206632364578cb3ab95fb568b8ac1339c8d3e18451e6b1aaa9a9765316"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.0/clarity_0.29.0_linux_amd64.tar.gz"
      sha256 "edb1f4a889b0d3d8aa9e372665993070f8924f96e8bc320e298df0b48a2add04"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
