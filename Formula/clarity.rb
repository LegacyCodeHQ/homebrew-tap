class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.29.3"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.3/clarity_0.29.3_darwin_arm64.tar.gz"
      sha256 "8dfd5a88ad5a0e9056b109e5dc13df650960cc69301b62c36c13c5310d3c7237"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.3/clarity_0.29.3_darwin_amd64.tar.gz"
      sha256 "a102247bd04b72082928a0cae9a9a901d7cb62e633f944431e77fcdd5d84c7d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.3/clarity_0.29.3_linux_arm64.tar.gz"
      sha256 "2f4ae0ae073d9e88f3ce3c539f21b569ff4efe803ed4f8bb0bd3b865f170532c"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.3/clarity_0.29.3_linux_amd64.tar.gz"
      sha256 "f2f76e7de9b7c99cafd79d3b012c29e49ff4a418036262350f73f81a9b3d25d3"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
