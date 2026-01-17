class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.1/sanity_0.7.1_darwin_arm64.tar.gz"
      sha256 "c04ca520e07b6c7fe2c771fe045a4150e9be2194a11ce6cfe2a80afcbee568ec"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.1/sanity_0.7.1_darwin_amd64.tar.gz"
      sha256 "dd24ac73bfe07f69511bc1a37dacfebf77331f1094997e2c44ef6844d12f5120"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.1/sanity_0.7.1_linux_arm64.tar.gz"
      sha256 "967719f6d14f2b6702f2ad00649bac72e10b80f1725b8e7c610f5f62ef492136"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.7.1/sanity_0.7.1_linux_amd64.tar.gz"
      sha256 "6d9decec88792e262a6f76d09c7d119c459a02386ae8ed0ce3439708ade67380"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
