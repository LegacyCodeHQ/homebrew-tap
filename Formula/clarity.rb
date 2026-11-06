class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.35.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.35.0/clarity_0.35.0_darwin_arm64.tar.gz"
      sha256 "bac4ed95f6b4df5c93fe39a9d98e5dd3858383d1e2a26407c188264851c76b89"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.35.0/clarity_0.35.0_darwin_amd64.tar.gz"
      sha256 "9c131c467cd82dcfbdbab237e2abf7e454c72e7d516528a32206f72e7ef5dbe6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.35.0/clarity_0.35.0_linux_arm64.tar.gz"
      sha256 "b6005d11bd79ed2a5ff357d311641498d61b7fd6a335e41064b9a139f93e8621"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.35.0/clarity_0.35.0_linux_amd64.tar.gz"
      sha256 "de4370b6378b202aca972adac7f66317dfc28a47cc20560413845fa2b70b47af"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
