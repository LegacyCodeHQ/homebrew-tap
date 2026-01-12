class Sanity < Formula
  desc "CLI tool for analyzing and visualizing dependency graphs"
  homepage "https://github.com/LegacyCodeHQ/sanity"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.2/sanity_0.2.2_darwin_arm64.tar.gz"
      sha256 "1f7b2268c30c4342fc4e7bf4019379ced6a752874cd3e98ee2ed5cc2d5536c8e"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.2/sanity_0.2.2_darwin_amd64.tar.gz"
      sha256 "27613a7d8dbdbfe16c0ad7b04eefe606a34d1b0e3b491f020934647374b9d2bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.2/sanity_0.2.2_linux_arm64.tar.gz"
      sha256 "5b2a4b96401dfdf3e91eb8bea3df376c0944bcab8a1fe6b9db6859a3146a0fc3"
    else
      url "https://github.com/LegacyCodeHQ/sanity/releases/download/v0.2.2/sanity_0.2.2_linux_amd64.tar.gz"
      sha256 "9fc07dda58bd68cfd394e6319cc8c5ac40a3f482ab8a4c081938b92f6426acfe"
    end
  end

  def install
    bin.install "sanity"
  end

  test do
    system "#{bin}/sanity", "--version"
  end
end
