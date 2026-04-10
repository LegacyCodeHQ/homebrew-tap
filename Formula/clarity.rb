class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.19.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.1/clarity_0.19.1_darwin_arm64.tar.gz"
      sha256 "b5fae2727cdc8ea63859b5f14b070ee6238c60470e269140d8cdbc044d0b398e"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.1/clarity_0.19.1_darwin_amd64.tar.gz"
      sha256 "90772779222eac19608c5590416940ae4c99b71e38ecc14744118b86401d186c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.1/clarity_0.19.1_linux_arm64.tar.gz"
      sha256 "170d0e1c31d5bec584b232f267a014a18c87dfa5fce968fcfcf5f6496f715791"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.1/clarity_0.19.1_linux_amd64.tar.gz"
      sha256 "279344e3cbc7c67b7f1a1c3723f9c0d4c7ffa9496aefbc3d0cfb3a190bc4e7cd"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
