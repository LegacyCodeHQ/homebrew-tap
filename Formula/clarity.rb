class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.28.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.0/clarity_0.28.0_darwin_arm64.tar.gz"
      sha256 "4afa0d82c875607357895b3ff4a12f0a094f56efe8897436e712cc47fea5d807"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.0/clarity_0.28.0_darwin_amd64.tar.gz"
      sha256 "e1e3f9e27b747d86f18eb858c3300b8dfd9e40dcbf08444b3bbbed24f2e195e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.0/clarity_0.28.0_linux_arm64.tar.gz"
      sha256 "465736f14d251ae09ea4d28631336b61814205432e9ab9037dcc1222cddc4198"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.0/clarity_0.28.0_linux_amd64.tar.gz"
      sha256 "03d4251602b9bce531a98c851ae2e0508abc52c2f7870546ba410ec1fe152fe0"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
