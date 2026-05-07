class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.19.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.2/clarity_0.19.2_darwin_arm64.tar.gz"
      sha256 "dd3c4f5f1861e809b6004f3a2db4c29909c042d603c5b2c6a38eb2fbfb4a9456"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.2/clarity_0.19.2_darwin_amd64.tar.gz"
      sha256 "0254c70c7ec385f5a2bf4b0ac4a8b90ee523eb236b97481c6cb10b241ac1b3a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.2/clarity_0.19.2_linux_arm64.tar.gz"
      sha256 "5f9e0a6c138620bb0b2aab26642c01c804697eecf66cff4e499538e899fd2224"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.19.2/clarity_0.19.2_linux_amd64.tar.gz"
      sha256 "d8e148a99dbc77e34d0e25b8db05122c08fa8952c2bbb29b92f5e75213328f00"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
