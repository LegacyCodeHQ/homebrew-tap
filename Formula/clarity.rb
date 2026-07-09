class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.29.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.1/clarity_0.29.1_darwin_arm64.tar.gz"
      sha256 "c7cafd352dc53a0c3cc3448fcd702108b7932baea75e1c68f7fe981f7ff9122f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.1/clarity_0.29.1_darwin_amd64.tar.gz"
      sha256 "147d879bf06dea03c9eaad34aedb2529b3e431cb1be70092a3fdc180ef7f58c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.1/clarity_0.29.1_linux_arm64.tar.gz"
      sha256 "a7386acb1246b5d8fb1a68607c1b0f80f3e327afa02a57ca303825a0b3d21f0f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.1/clarity_0.29.1_linux_amd64.tar.gz"
      sha256 "bd3358cea17069bc5fee6fa6f7b689c6d0e439582718bfc5db55f88d239bc95e"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
