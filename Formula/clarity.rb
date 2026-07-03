class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.28.1"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.1/clarity_0.28.1_darwin_arm64.tar.gz"
      sha256 "a3afc62f99162f0d76ddd20f953ec3c49e2b37f4987b2da3871a9dc5e16d6c9b"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.1/clarity_0.28.1_darwin_amd64.tar.gz"
      sha256 "7184c00e2a08de1be7c942ffdd6cf1d0cd0689de42cd8f28e1341e34ee9598f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.1/clarity_0.28.1_linux_arm64.tar.gz"
      sha256 "fd27888351b64cd02808dac41daf40b879604db37129cc1af0aec5e6b962a356"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.28.1/clarity_0.28.1_linux_amd64.tar.gz"
      sha256 "811fe69e5c3cbdc5c495262ce785289d828a2421a7e019afe6a1a82ab9818c4b"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
