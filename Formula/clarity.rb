class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.16.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.2/clarity_0.16.2_darwin_arm64.tar.gz"
      sha256 "218e90ed4b9733f9920d4dba1db3ac750146a689204ac1a7d3f6855b338b659c"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.2/clarity_0.16.2_darwin_amd64.tar.gz"
      sha256 "f4ccb70e4794e06f1770ee13c752aac9d9e44ff70bd5b21f639a75622ed152c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.2/clarity_0.16.2_linux_arm64.tar.gz"
      sha256 "2cd756aed9feb6d29d1bb069dc76f856c1da3331c4994bc5555fabaf16f7527f"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.16.2/clarity_0.16.2_linux_amd64.tar.gz"
      sha256 "ccb8a772425878e1364db4c848e6034004604b436c8c35312b7cdf026dd9a9d9"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
