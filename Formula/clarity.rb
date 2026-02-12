class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity"
  version "0.15.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.0/clarity_0.15.0_darwin_arm64.tar.gz"
      sha256 "5ba5e92f3533e57c3932825f409f544f969d22979e99213fa2010d89f0d5690a"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.0/clarity_0.15.0_darwin_amd64.tar.gz"
      sha256 "20688ed9786d6086e1a47fd287ef36f8f8821545aa151c97c34492b0b93455d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.0/clarity_0.15.0_linux_arm64.tar.gz"
      sha256 "969fa37f6ae63ead7c8eb5ab25b15bed52d3b18574d48e4bbec5acbfd541a8a2"
    else
      url "https://github.com/LegacyCodeHQ/clarity/releases/download/v0.15.0/clarity_0.15.0_linux_amd64.tar.gz"
      sha256 "70cbd9d0b57a6e356ca30b7846a5379e2e50f84d9cfb901410a3075d4c147984"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
