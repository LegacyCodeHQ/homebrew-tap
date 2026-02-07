class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.0/sanity_0.11.0_darwin_arm64.tar.gz"
      sha256 "a49de4860e34cabcf2eab2af48abfc8e98986497c876cd83bf6c67464db9ad24"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.0/sanity_0.11.0_darwin_amd64.tar.gz"
      sha256 "1598ae414bcdcdaef237760e2cdde12857f745578cbcf99901555f7269018763"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.0/sanity_0.11.0_linux_arm64.tar.gz"
      sha256 "7e33d18ac8a1045e466a2d6ecaf8ea7f99784fab0e9c15835e31f3eb97162fc8"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.0/sanity_0.11.0_linux_amd64.tar.gz"
      sha256 "cc7ab5a47cff6030267db79f40f5f7cb461418c5ee7c9f3998145479bedc3026"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
