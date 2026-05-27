class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.23.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.23.0/clarity_0.23.0_darwin_arm64.tar.gz"
      sha256 "9a13d76f206e1fa3026022551a85eb34b278de1f314e5d2f417dd7592905bc2c"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.23.0/clarity_0.23.0_darwin_amd64.tar.gz"
      sha256 "aced7a956b4569739f2d0a3b0949c69e846e17610588810601ed21197626fb52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.23.0/clarity_0.23.0_linux_arm64.tar.gz"
      sha256 "45bd477fdc8689bac42566d1a6f4621105fae0e6a8b0f4d6a671f64a573a2291"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.23.0/clarity_0.23.0_linux_amd64.tar.gz"
      sha256 "44e59cba42e7a56c91967354a690ecc573fa7dd61de8b2fb406f8a36f2d42dce"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
