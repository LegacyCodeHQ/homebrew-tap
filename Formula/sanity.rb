class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.2/sanity_0.10.2_darwin_arm64.tar.gz"
      sha256 "6de25eeeb7894cc32aee38c725998a0b8d1e34a998d73b3f4be1c88c7575d132"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.2/sanity_0.10.2_darwin_amd64.tar.gz"
      sha256 "eeeefc14851fe18fbbb1a97b404082cc45ecf92b648e6f301124af27f4f2ced7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.2/sanity_0.10.2_linux_arm64.tar.gz"
      sha256 "82b2eb2b4b026f8207e451094f154cf5638b4a8ca463ee9ebef58e0b40afc8e2"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.10.2/sanity_0.10.2_linux_amd64.tar.gz"
      sha256 "a9ad8efe12b48b0b99e0bc323cb0b0e187af573c1df9f7033b96ed8268c83734"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
