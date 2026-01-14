class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.5.0/sanity_0.5.0_darwin_arm64.tar.gz"
      sha256 "8ed03d9585d8dc7d2b20fbac890e8f41754a15cf69c0b6e8c57bdfb8d17335f1"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.5.0/sanity_0.5.0_darwin_amd64.tar.gz"
      sha256 "b837d6c3dc7947e5304b3e72bcc5a86c0db2ea93c95b59df8c3a7b449d8c9a69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.5.0/sanity_0.5.0_linux_arm64.tar.gz"
      sha256 "46d28a37b5fef4d0cf44a3aef45b48fa8b756192c9ac087d0b3ae5bcb9271794"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.5.0/sanity_0.5.0_linux_amd64.tar.gz"
      sha256 "e4dd6e0632f578073fdb6da3d45306c0e170ccea7973b119ec3f38242629c069"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
