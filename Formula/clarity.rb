class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.26.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.26.0/clarity_0.26.0_darwin_arm64.tar.gz"
      sha256 "1522bc5a9076617620a0b8b30404676ab8dd74013c71f01e438eee139e4a4814"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.26.0/clarity_0.26.0_darwin_amd64.tar.gz"
      sha256 "f365c06507047947cf31ab1800b6498e8158c045f5e55a31153f730530a03a28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.26.0/clarity_0.26.0_linux_arm64.tar.gz"
      sha256 "8ec51be86317b850a1a26bfc435841d8960c521caeed890b74b85808af2c5be6"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.26.0/clarity_0.26.0_linux_amd64.tar.gz"
      sha256 "121bba6382f7eabcfd37cb897b076985bec18690b46018128f6a6c93da460922"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
