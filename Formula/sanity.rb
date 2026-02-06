class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.0/sanity_0.10.0_darwin_arm64.tar.gz"
      sha256 "15df8f80913ae763830a4c9740aba14eb5d50b25bfaa5e59aa57db80169499c4"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.0/sanity_0.10.0_darwin_amd64.tar.gz"
      sha256 "5a5a5217cbb68ec76305b83b7cbbeae1ea1cbe27353e9ef0972c1a032182bd81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.0/sanity_0.10.0_linux_arm64.tar.gz"
      sha256 "a95aab43d38765b9c3a316d2b7b44f4c4162b296760b86560a6920beb190e949"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.0/sanity_0.10.0_linux_amd64.tar.gz"
      sha256 "44fac3d6a4d48b3f88a7240cac57fc95fddfcb81df93eefbc740b2d5c656d6df"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
