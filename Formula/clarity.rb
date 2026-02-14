class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.15.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.2/clarity_0.15.2_darwin_arm64.tar.gz"
      sha256 "3d93795a75e637b751942c05f9bb2cd6f40055164b6f59c6395d37c61f94da60"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.2/clarity_0.15.2_darwin_amd64.tar.gz"
      sha256 "712cb5bbcbd4a08204646cf059ae24d39c69fe9e99f3b7084d4f8074773ca31b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.2/clarity_0.15.2_linux_arm64.tar.gz"
      sha256 "4e096e477217310126793d8bdde613c230c207b0928d424043d886f15b23d250"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.2/clarity_0.15.2_linux_amd64.tar.gz"
      sha256 "dc23e326fd4d0a3b14942481814d726b28ae6039cdcaf0090219cb2b3a4fe222"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
