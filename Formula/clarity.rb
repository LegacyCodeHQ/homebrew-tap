class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.16.7"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.7/clarity_0.16.7_darwin_arm64.tar.gz"
      sha256 "ca63a34d63f6ecb35711195e37123dcb5c52194f2fde08b67040217660ab80bc"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.7/clarity_0.16.7_darwin_amd64.tar.gz"
      sha256 "e311e4847cdc59878c17c3f8d90f7288a6053f1ed69e0d35a50b19806f905f67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.7/clarity_0.16.7_linux_arm64.tar.gz"
      sha256 "d08246540a52407b6ed1ace907846132382b808be24dc22e1da70c3bc6492ad0"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.7/clarity_0.16.7_linux_amd64.tar.gz"
      sha256 "e08c2ad90931c00320ee42b2330f134600cb94a565eb1fe7f5d4bd7fe359a8b9"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
