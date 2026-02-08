class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.12.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.2/sanity_0.12.2_darwin_arm64.tar.gz"
      sha256 "fe8ddd756e6a70d808bc2338ddf9eb139d7501c3528df55b27a6f9ea676abab9"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.2/sanity_0.12.2_darwin_amd64.tar.gz"
      sha256 "3ad06907704e9e46f08e88d7a5f7d67c507efc1c809ee01ec6e42d0df1a5d61e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.2/sanity_0.12.2_linux_arm64.tar.gz"
      sha256 "64f7214e273b441248a4bc4c337f37ce00d046d4eeb92f4c6a884a633842462e"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.12.2/sanity_0.12.2_linux_amd64.tar.gz"
      sha256 "6187c0fc3ea805480c52368ba14ac09f6e7fbbe3b39b96c4820df0b455770678"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
