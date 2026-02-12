class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.14.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.14.0/clarity_0.14.0_darwin_arm64.tar.gz"
      sha256 "a9198a48629bef899f5262e6900c09dc1e5e8b01e15bccdb0d883d27d3a4317a"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.14.0/clarity_0.14.0_darwin_amd64.tar.gz"
      sha256 "1622d3247cf14a9d1593af9d9d5189ea2aac02906f6e9e5ecd96ecbdcf44b738"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.14.0/clarity_0.14.0_linux_arm64.tar.gz"
      sha256 "e4ba40a1840f2eafedc679d4de10cce03c6a7caeb4b7ef80e799baeea7a2051e"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.14.0/clarity_0.14.0_linux_amd64.tar.gz"
      sha256 "3477a7d5dc56089e58026c9202de2c68b03493602fbc8f6bf0ca0f0b690cd2dc"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
