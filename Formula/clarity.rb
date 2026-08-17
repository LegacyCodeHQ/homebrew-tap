class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.31.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.0/clarity_0.31.0_darwin_arm64.tar.gz"
      sha256 "2af8ec81998104b0555f59375c13b0570ea4eb94819989db2e7107b3a82a9f85"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.0/clarity_0.31.0_darwin_amd64.tar.gz"
      sha256 "de2c2a72de71f6b4fde27a6d8ca55e3f00e1156408795ce3ea678f79501a80bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.0/clarity_0.31.0_linux_arm64.tar.gz"
      sha256 "8a64a6d7da71c910fe7e7cbebf7c7fe225a413b22a61a41ece78feff69875553"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.0/clarity_0.31.0_linux_amd64.tar.gz"
      sha256 "7567dba73528bc465d7b5974da9aa2fb456d2a4304a5805a76795d08c08d9098"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
