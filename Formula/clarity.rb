class Clarity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/clarity-cli"
  version "0.33.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.1/clarity_0.33.1_darwin_arm64.tar.gz"
      sha256 "c5491776a15e9a0ba74c634fd07127ef2da657ac1e87af9527676bc97032e7cd"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.1/clarity_0.33.1_darwin_amd64.tar.gz"
      sha256 "bace731c389adc08cb3895be809d7375f83c3066f2d3b797673547053c652c66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.1/clarity_0.33.1_linux_arm64.tar.gz"
      sha256 "574d85b061344e5a1775de45b3acd6ea756dea4fdbd9b972ba4bc0814a10fb23"
    else
      url "https://github.com/LegacyCodeHQ/clarity-cli/releases/download/v0.33.1/clarity_0.33.1_linux_amd64.tar.gz"
      sha256 "0f859b92734b768bf7a4e8f6380cfd94e7300554689cbdeba0171eca84464f79"
    end
  end

  def install
    bin.install "clarity"
  end

  test do
    system "#{bin}/clarity", "--version"
  end
end
