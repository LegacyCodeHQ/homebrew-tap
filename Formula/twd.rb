# Generated with JReleaser 1.2.0 at 2022-11-11T07:56:55.092029+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.32.0/twd-0.32.0.zip"
  version "0.32.0"
  sha256 "1d4a2de806491bb1170e36d3ccf8118273f3f25f2420771807e159b264f1bc53"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.32.0", output
  end
end
