class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.8.0/sanity_0.8.0_darwin_arm64.tar.gz"
      sha256 "167ef8247e0e78533838a51aca5987b8a228544d0600cf508185f1d327dba2b0"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.8.0/sanity_0.8.0_darwin_amd64.tar.gz"
      sha256 "160a3b5918165ba9e13696bbc00f56222f76dda661f2e02d9efa48b38ea3b0a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.8.0/sanity_0.8.0_linux_arm64.tar.gz"
      sha256 "d5a03c0b30381c4d687468ff4ffda787b0dcdf303b087c6933dade4fc4ccaa58"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.8.0/sanity_0.8.0_linux_amd64.tar.gz"
      sha256 "03a69161de330218e9bc23df276c0a03f53dc632272af9dbabac7a57f6000987"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
