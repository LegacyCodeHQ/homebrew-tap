# Generated with JReleaser 1.2.0 at 2022-12-03T17:59:11.148216+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.38.0/twd-0.38.0.zip"
  version "0.38.0"
  sha256 "480c2f08122e8cafa6042e2f875f2677b3fde732b4ed873f4272d2680dec8acb"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.38.0", output
  end
end
