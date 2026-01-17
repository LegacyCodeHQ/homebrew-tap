class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.0/sanity_0.7.0_darwin_arm64.tar.gz"
      sha256 "a617960f3716dbad0be38f5ed130bbc58105854e09e436c9fd0d52582e1e3cb5"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.0/sanity_0.7.0_darwin_amd64.tar.gz"
      sha256 "9c89810fc1798541a47c12c844adfd70dd3356517009640bc3548717f023d644"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.0/sanity_0.7.0_linux_arm64.tar.gz"
      sha256 "5cf512462c6d279a73ac49b106531f4d11386bc5f260b26bdeb9423f27da6318"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.0/sanity_0.7.0_linux_amd64.tar.gz"
      sha256 "ee1ab18f0a07e0d306e42e7f9ff1ab2ef8b469e79fbef9b29b0dc4ad0a0f1d74"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
