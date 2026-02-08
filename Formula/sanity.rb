class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.1/sanity_0.12.1_darwin_arm64.tar.gz"
      sha256 "d175ad3ba5277426ab518533c21f939352cff57dfd78f6b3a0215adba6127a1a"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.1/sanity_0.12.1_darwin_amd64.tar.gz"
      sha256 "e85ab8c8e52ca2bca329e5dc1545e6da7a45871d748fc4a10b0a41290ecdfab2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.1/sanity_0.12.1_linux_arm64.tar.gz"
      sha256 "a6a3b10d24433f7a8d2c402a818812d8c149c2027243263f65d05b2019c94308"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.1/sanity_0.12.1_linux_amd64.tar.gz"
      sha256 "068010cb4b80c2b09304b2ce9a2be5b887fe2718d7fa6350ba04cf131bc5e622"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
