class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.18.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.18.0/clarity_0.18.0_darwin_arm64.tar.gz"
      sha256 "d9eb857e771c3fd3188655a0de5074a9bd81070d1add753182d24d2e58b50ae1"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.18.0/clarity_0.18.0_darwin_amd64.tar.gz"
      sha256 "a91e05f2c3785f2a0d88f1984f7db2f1afe9cd52cc3ed82adf0ca233fcf7095c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.18.0/clarity_0.18.0_linux_arm64.tar.gz"
      sha256 "9ba8b16dbd389936209cf726cca9114a12052a31249ab057ea4b613dc6ab2d5f"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.18.0/clarity_0.18.0_linux_amd64.tar.gz"
      sha256 "64ef52ab6c8b96733e93788f554bc6d94371c50ddf3aae2133c0c921063f8156"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
