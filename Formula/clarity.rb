class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.19.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.0/clarity_0.19.0_darwin_arm64.tar.gz"
      sha256 "2753078bda4f2f371b1adf33c68ab05cf11a85ff28e69a2417a5513e9f79707b"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.0/clarity_0.19.0_darwin_amd64.tar.gz"
      sha256 "4322ddd1936a333f8f9cd08870eb6554ce9ddb1d2fcdecbd820c1a5a38d0f8ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.0/clarity_0.19.0_linux_arm64.tar.gz"
      sha256 "6bae78fd3eff0f2125cd0164b0194b30eb8ae3012d4593a432fa40e3691a1199"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.0/clarity_0.19.0_linux_amd64.tar.gz"
      sha256 "84c59818aee5e394fe85617741e4aa60928b2bedffc67af4d12360e894ac1cdb"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
