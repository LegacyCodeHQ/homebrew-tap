# Generated with JReleaser 1.2.0 at 2023-04-25T08:58:02.661214+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.39.1/twd-0.39.1.zip"
  version "0.39.1"
  sha256 "dcb53f53e01cb520d1c7233475c1e5d0d76c00078deed7c6e0f703595a284b17"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.39.1", output
  end
end
