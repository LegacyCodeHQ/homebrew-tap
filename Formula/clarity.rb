class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.34.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.2/clarity_0.34.2_darwin_arm64.tar.gz"
      sha256 "b1995511c8a721d41b15eb4843fdd1f7afdeb1954d8d3a1e9e5c72fd7b7bf2bc"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.2/clarity_0.34.2_darwin_amd64.tar.gz"
      sha256 "481d6b858565dcb2fe8b1fb1911ed44c1057211375a842bbda9be9314357a2d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.2/clarity_0.34.2_linux_arm64.tar.gz"
      sha256 "480296563131d1a52fcee40d03c63e524fca7b3d8e186f886afd4da741ed2400"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.34.2/clarity_0.34.2_linux_amd64.tar.gz"
      sha256 "57ccdd9c3273018c274aa1163355133a1c366e8b2acb057820470817deecf9ad"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
