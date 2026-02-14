class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.15.3"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.3/clarity_0.15.3_darwin_arm64.tar.gz"
      sha256 "a384b64390b4eefa2ce7c8be8054e292816ecb2d82d439b81bffe3b20efd8fae"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.3/clarity_0.15.3_darwin_amd64.tar.gz"
      sha256 "29abf62d841006c6cdad8b84ee2e48f77914a2ba205a26e3879488420a19bf29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.3/clarity_0.15.3_linux_arm64.tar.gz"
      sha256 "a35eb9eeaaef83d231c6c7fe2cef3f2ffed1db3feb8d8b352d1515981a55e959"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.3/clarity_0.15.3_linux_amd64.tar.gz"
      sha256 "28754ba35c2a64180b5128eafc902755c15ad50e93f6f677dc48b0200cac52b7"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
