class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.30.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.0/clarity_0.30.0_darwin_arm64.tar.gz"
      sha256 "d8e616ab70f9c5fff797422ef9a3f6d124ac8fe9e39c36dc843f60602bb51429"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.0/clarity_0.30.0_darwin_amd64.tar.gz"
      sha256 "c6d19f0e751a06f109a8c3110fdb4e36dd75d76a2e11566f2da40dc38fe7a648"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.0/clarity_0.30.0_linux_arm64.tar.gz"
      sha256 "bd50e3d315cc02f516215c3a954ddbfb4385d66bfaeea15bd60596cfcf781e46"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.30.0/clarity_0.30.0_linux_amd64.tar.gz"
      sha256 "0f16a9b6f8551238ba8d171dfd4c3b35cccebb4b95abdf6d25e22f95019c9243"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
