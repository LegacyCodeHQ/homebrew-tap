class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.13.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.2/clarity_0.13.2_darwin_arm64.tar.gz"
      sha256 "310e6929903ea34b4edfe13f50af3bf139a83e027d3155f5759833ada2beaa68"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.2/clarity_0.13.2_darwin_amd64.tar.gz"
      sha256 "ea83f9cc132b68a053bc58b8360f6e51a4b8af86648e1bee2bfc461a45a94b4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.2/clarity_0.13.2_linux_arm64.tar.gz"
      sha256 "6187f6163988e63c25d797b035797b416154e5a5bcd79e8d6d76aed861ef13c5"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.2/clarity_0.13.2_linux_amd64.tar.gz"
      sha256 "7cc4c3c6a7cb359210500ac616b83430e0da808c617810fcdab824628b992c42"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
