class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.16.4"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.4/clarity_0.16.4_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.4/clarity_0.16.4_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.4/clarity_0.16.4_linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.4/clarity_0.16.4_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
