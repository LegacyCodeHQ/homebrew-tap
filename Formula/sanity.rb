class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.6.0/sanity_0.6.0_darwin_arm64.tar.gz"
      sha256 "0966e2928d28111aa71ce1d0b7375e90baa14d188954c18a0c77070275f3a1d1"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.6.0/sanity_0.6.0_darwin_amd64.tar.gz"
      sha256 "68caf2b59e9a930ed1192c5f1b65cbfcac0788bdc9fa8d69fc8aaddcbdb2ce9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.6.0/sanity_0.6.0_linux_arm64.tar.gz"
      sha256 "6928ec33eac5a36b9dd8b32bdc7c3ec35df03947bf683b11e0128fdb8f913e14"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.6.0/sanity_0.6.0_linux_amd64.tar.gz"
      sha256 "d7246ad50d0630b69591b395a30fba24811c4c27863a6d362d61fbf0d47af25a"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
