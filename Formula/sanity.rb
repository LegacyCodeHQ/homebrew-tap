class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.1/sanity_0.11.1_darwin_arm64.tar.gz"
      sha256 "4a9adb7434af7c6a66df522046d0fbe419e89409a584954edd948778aebe331c"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.1/sanity_0.11.1_darwin_amd64.tar.gz"
      sha256 "1100e2ff1115f802ea82a56bc5275cee1ba041f06664dd13bf4df7b8e35f680b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.1/sanity_0.11.1_linux_arm64.tar.gz"
      sha256 "3a4ccb6edca816df0ee5c80b5cb6e12b2ee00af2455faa3712c06cbf0ecfbc23"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.11.1/sanity_0.11.1_linux_amd64.tar.gz"
      sha256 "962fffe25f83427d82c14b24e7e7fb42aa91a66954b2fbfbe0a369a276346e5f"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
