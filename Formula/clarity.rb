class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.30.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.3/clarity_0.30.3_darwin_arm64.tar.gz"
      sha256 "e5a86dd327ac315fc86543a80dacdb9b7f0ae4b96278166a2089c95054100724"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.3/clarity_0.30.3_darwin_amd64.tar.gz"
      sha256 "012860faaf1a795650a1bafd285a19c9b4cea6bb61dc02ce8466f5a4fe00075b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.3/clarity_0.30.3_linux_arm64.tar.gz"
      sha256 "1e56fe595605bbf44dffa6f372d09ad40aa98bf0cd089ef99e581ae542faf01a"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.3/clarity_0.30.3_linux_amd64.tar.gz"
      sha256 "4c685b34ea1da8f3de1f953934fd4e2c406e702d54f577de44d129b6f139683e"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
