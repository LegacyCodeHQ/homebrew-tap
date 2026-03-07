class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.17.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.17.0/clarity_0.17.0_darwin_arm64.tar.gz"
      sha256 "0f34d1ec5413d3d2306e243394057943414def1b950a658ae19fc369b2f90e53"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.17.0/clarity_0.17.0_darwin_amd64.tar.gz"
      sha256 "4de065d4db2a51fffe73bf7df57eb1382487cd17f429926d0ae7a9770401e588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.17.0/clarity_0.17.0_linux_arm64.tar.gz"
      sha256 "7c9111ce86681b614767556e634d6ff1017d63368a86dd9801f57259b5695ec9"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.17.0/clarity_0.17.0_linux_amd64.tar.gz"
      sha256 "9e20ae458a1c69fe631c7b22f900c381c6098c9a198b2732e52a50ecb85b751c"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
