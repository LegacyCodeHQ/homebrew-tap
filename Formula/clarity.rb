class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.20.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.20.0/clarity_0.20.0_darwin_arm64.tar.gz"
      sha256 "3fe92c088571a5c37063e2b5096409746aa38d3a5b5897e34aa653a735210c5f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.20.0/clarity_0.20.0_darwin_amd64.tar.gz"
      sha256 "f18ef04f517ad81653fd6c2f7bc518ef29e9f63eddafad15a876f66b858c82be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.20.0/clarity_0.20.0_linux_arm64.tar.gz"
      sha256 "9288a7f543815f287d2a22a0847a04c29aad34f29223c7ad87eb67bab296f730"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.20.0/clarity_0.20.0_linux_amd64.tar.gz"
      sha256 "7fad6421e29039b4ff5ce4dc4c06fab918dba0a45421434f4af7e64b2cca0759"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
