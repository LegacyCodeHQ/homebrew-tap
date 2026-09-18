class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.32.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.32.0/clarity_0.32.0_darwin_arm64.tar.gz"
      sha256 "40df643999292aee7b5533eea576ab8cb3f7aad24447dc0c9f478a79072faf95"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.32.0/clarity_0.32.0_darwin_amd64.tar.gz"
      sha256 "8697fd085f26c83be6bf754b0602836b10777f9802d470ee1d4061a105891c47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.32.0/clarity_0.32.0_linux_arm64.tar.gz"
      sha256 "a49d6de930eab24b55b09adad65673dfcbeb98b04d9eff157216a7f9b7b28b10"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.32.0/clarity_0.32.0_linux_amd64.tar.gz"
      sha256 "207ca575b80c9217ba7ce1e33fbc9d5251dccbf773f8b1d5bc4035acc8aa350f"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
