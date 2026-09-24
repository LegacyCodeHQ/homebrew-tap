class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.34.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.0/clarity_0.34.0_darwin_arm64.tar.gz"
      sha256 "cc7587a341c0bb6a18ebf00610fda71cf73f739c391ab2d829909272f8d7cc8b"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.0/clarity_0.34.0_darwin_amd64.tar.gz"
      sha256 "084f709f39947d1ec6638eca3c8cce8cf97ae725728a5dc4d12ae7025a872c10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.0/clarity_0.34.0_linux_arm64.tar.gz"
      sha256 "d686072dcf3e4dc56aa501f19cc608596ac6c3f1478f0d4ee5ec88d5864d8a11"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.0/clarity_0.34.0_linux_amd64.tar.gz"
      sha256 "0555716bedd8d5b9c385644d8208d92c0b69c15c9ef91e56e0b01a6f62f52722"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
