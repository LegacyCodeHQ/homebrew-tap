class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.16.5"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.5/clarity_0.16.5_darwin_arm64.tar.gz"
      sha256 "cccae819b0b5d5a39dfa5e489263d48a582ec8e432caa0a6873e203f6689479e"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.5/clarity_0.16.5_darwin_amd64.tar.gz"
      sha256 "b70bd8110aa65bae7a3bd49dea7f543bf82c2c12c92899fdc4ce06e0ecce3b76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.5/clarity_0.16.5_linux_arm64.tar.gz"
      sha256 "71feb11184cf70c44be5f46d0d47d7d5b387e4154cac110dd92a72c6028c3542"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.5/clarity_0.16.5_linux_amd64.tar.gz"
      sha256 "9ea2bce4c0b0267c02923829fce9416bbe731eaf651a02c2e6fdaa25ebdd32d7"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
