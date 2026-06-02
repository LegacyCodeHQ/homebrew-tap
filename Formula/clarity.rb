class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.24.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.0/clarity_0.24.0_darwin_arm64.tar.gz"
      sha256 "5f64a1883f453c67644ba1f4d771ca55438759286540a64da68b1a3ecd7dc84a"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.0/clarity_0.24.0_darwin_amd64.tar.gz"
      sha256 "b4be99a35a582cfd26fa9629d402d23ff8edfd7503f42b85d91d4e1f1170a307"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.0/clarity_0.24.0_linux_arm64.tar.gz"
      sha256 "45e10891cbbcb4f7798956350b098e3385333fa4809321e96b0b7e3ea3b36d72"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.24.0/clarity_0.24.0_linux_amd64.tar.gz"
      sha256 "bc0ed358c9bc7fe4bcad4d7705e77bb80d114cfe8447734795b2ca53b44b2cce"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
