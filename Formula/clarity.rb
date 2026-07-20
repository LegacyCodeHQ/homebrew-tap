class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.29.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.2/clarity_0.29.2_darwin_arm64.tar.gz"
      sha256 "464cd40cd3fbc9cbd20a2db499a02b267fa56b9f3b31f0ef116da89101a1d126"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.2/clarity_0.29.2_darwin_amd64.tar.gz"
      sha256 "a55074fe6d24970ca21683f269c1cb3ebaeda68d0c6a5db42ae6e094c3c5200a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.2/clarity_0.29.2_linux_arm64.tar.gz"
      sha256 "c1c18ab5eabe15e393fb43876aa261b78683b82506a7135ee0498d28d16dcb2d"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.29.2/clarity_0.29.2_linux_amd64.tar.gz"
      sha256 "5623791f756e731af2ff550d4de5d3d94c00bf411a665d864f9a06298ccd614e"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
