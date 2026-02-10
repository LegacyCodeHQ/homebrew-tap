class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.13.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.0/clarity_0.13.0_darwin_arm64.tar.gz"
      sha256 "01d2e8321de9b2566a13dbfc8708767978e385fa544d83f60ee63a2a6a2cb0b8"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.0/clarity_0.13.0_darwin_amd64.tar.gz"
      sha256 "29a5db45559c14614dd2fe50b76084b1620e12aa68282518b2dcdab1a226ce69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.0/clarity_0.13.0_linux_arm64.tar.gz"
      sha256 "eefa80416ef69623a2a8b05bd7719e711f9c2a159ede6dbceb54890a6639a8e3"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.13.0/clarity_0.13.0_linux_amd64.tar.gz"
      sha256 "0a563a1e798de923ae955c6f562bc7456d11dd8cc49b44056a61f6b0a4adea95"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
