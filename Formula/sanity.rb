class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.1/sanity_0.9.1_darwin_arm64.tar.gz"
      sha256 "20795e575158d37eebe926a729e2fb0ea6c6e5051c6ccb9e028f06e530115f9e"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.1/sanity_0.9.1_darwin_amd64.tar.gz"
      sha256 "5911fdc95d1d54ca29d9e949a54e8eb9cedecd8480503629e2486a67ac24a450"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.1/sanity_0.9.1_linux_arm64.tar.gz"
      sha256 "18e548dbcce7c91fd7e061da5135df05ca3775199db384707e69da6898bcf5f1"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.9.1/sanity_0.9.1_linux_amd64.tar.gz"
      sha256 "4fce9b87e961a675fde32b64239a7a152fa0f93111d8e7c44b0ec531f521d6d8"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
