class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.16.8"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.8/clarity_0.16.8_darwin_arm64.tar.gz"
      sha256 "d9c55295e5742b836b969d5eab6a59bd3d9c64798b764686b837c4fd1b72e77c"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.8/clarity_0.16.8_darwin_amd64.tar.gz"
      sha256 "d93f5ff6ea06c07110eb3375d9cdabb51717e6d33e90304b1dd1c0d341047df9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.8/clarity_0.16.8_linux_arm64.tar.gz"
      sha256 "9826effc9ffb4da219de770a63ab84e6c77a84592885fd98acab5d0a94fee535"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.16.8/clarity_0.16.8_linux_amd64.tar.gz"
      sha256 "237f2070e27e580fbb72d556e2efd5ac2457103896fd57d4a9fc329f8cc3ed77"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
