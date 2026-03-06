class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.16.6"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.6/clarity_0.16.6_darwin_arm64.tar.gz"
      sha256 "735ab1cc59142de7a4fe42c2cd365e39e92d9e868392608e37f5e7446a4cf83e"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.6/clarity_0.16.6_darwin_amd64.tar.gz"
      sha256 "aee4ae793778cf8a6ca6214ee4dbef7df6501fea0d4fc93ad1f27d67b4a512e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.6/clarity_0.16.6_linux_arm64.tar.gz"
      sha256 "6de20ff05c50118cebab7861edeea99ec96efc2b4e9baec07bc8d805ba838b7b"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.6/clarity_0.16.6_linux_amd64.tar.gz"
      sha256 "eab52205b08487c3d7ccb2acdd0e0e3cb20daf58385782d0ff29c9207782dbd8"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
