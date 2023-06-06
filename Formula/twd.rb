# Generated with JReleaser 1.2.0 at 2023-06-06T19:58:26.852274+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.58.1/twd-0.58.1.zip"
  version "0.58.1"
  sha256 "3431996e753932137c7a29d9ce84f2362cbb8ddd41fa58aacb424d02500799dd"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.58.1", output
  end
end
