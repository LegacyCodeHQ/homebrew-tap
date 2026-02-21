class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.16.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.1/clarity_0.16.1_darwin_arm64.tar.gz"
      sha256 "a53222eaa950b60191fc2200bd2f0ce5db4af41b2bb57ab1a568ddd63579d140"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.1/clarity_0.16.1_darwin_amd64.tar.gz"
      sha256 "f801df99b19512f46703892a2b0faca1f18f2f12bfa4f40ffa47f84645461ec2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.1/clarity_0.16.1_linux_arm64.tar.gz"
      sha256 "4fb66789b41658d49b63b94600922e553cbb43dd5c3dab97462efd2f05dcb355"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.1/clarity_0.16.1_linux_amd64.tar.gz"
      sha256 "2cfce6f5f78b04126a39222c41f0fbc26d2bbbe49bc4e46f3c96ab939f1fd1f9"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
