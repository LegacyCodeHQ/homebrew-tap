class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.21.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.21.0/clarity_0.21.0_darwin_arm64.tar.gz"
      sha256 "e478b51f22019742bdd0ff0f6e8fc154eb9faa7ce88e6c769709cbeaafb7e260"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.21.0/clarity_0.21.0_darwin_amd64.tar.gz"
      sha256 "35b1d6b97832125997926d127f7e4ecae827d334c39bad07787de42c9d265f7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.21.0/clarity_0.21.0_linux_arm64.tar.gz"
      sha256 "9c7b8373f6a03f6990449f244251897ddf6af666b082a1f682ef5670210858a3"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.21.0/clarity_0.21.0_linux_amd64.tar.gz"
      sha256 "8030e3084dd3b8ed1812183b33c08efd39042241e5ae9275dbeb82307dc9885b"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
