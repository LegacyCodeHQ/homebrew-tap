class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.31.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.1/clarity_0.31.1_darwin_arm64.tar.gz"
      sha256 "03b1139321c9d55ea1b277bcd49c898c8158bd0e6d409ebfc8065726d435c654"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.1/clarity_0.31.1_darwin_amd64.tar.gz"
      sha256 "f0c585fdc1bc922b4c5e7dade0f13544858d7faa202b073bc50c10b54d91f828"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.1/clarity_0.31.1_linux_arm64.tar.gz"
      sha256 "b8161ba019f0b1f73140f1c204742abbe59b217f327eeb33836aef07f3a53091"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.31.1/clarity_0.31.1_linux_amd64.tar.gz"
      sha256 "60cc91aca3f473341016f0ef320130ec5620a26a5c068f72839892950b7bc163"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
