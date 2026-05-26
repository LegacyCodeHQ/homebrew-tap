class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.22.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.22.0/clarity_0.22.0_darwin_arm64.tar.gz"
      sha256 "ef1eb3aaaf00b35345859e295c406d6e41564b0a4c7f419f791ae08a05385142"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.22.0/clarity_0.22.0_darwin_amd64.tar.gz"
      sha256 "43430c29d2f88755a348a4753a327db7cb2b3df1af3dd9049885f46cb4290db0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.22.0/clarity_0.22.0_linux_arm64.tar.gz"
      sha256 "d9df47a3fa113482f5575fd880c1d5849f5bca53d48efc3e4fd906b47830374e"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.22.0/clarity_0.22.0_linux_amd64.tar.gz"
      sha256 "675c11e4f483d15dcd2824b3313d518fc79ea364e303d8eae0c74c41409ba8e0"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
