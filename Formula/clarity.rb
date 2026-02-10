class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.13.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.1/clarity_0.13.1_darwin_arm64.tar.gz"
      sha256 "ad91853f1bc7219bb548b210e5ca49350e3813f64ecec39a57e9781627eb84a0"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.1/clarity_0.13.1_darwin_amd64.tar.gz"
      sha256 "fecf7ac09c684b0afd3c90c1235f046a4a3c40750e02f1b66999a2ee6e014d5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.1/clarity_0.13.1_linux_arm64.tar.gz"
      sha256 "d2c110775569cd66254bd94d686b7efd69d14560e8094b7de5a1a72ada5a92c8"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.1/clarity_0.13.1_linux_amd64.tar.gz"
      sha256 "18922901d2035530a0b20573f42c1a53bae8c1abdad612b406cf74609e5a45dd"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
