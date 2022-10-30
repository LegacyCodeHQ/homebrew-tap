# Generated with JReleaser 1.2.0 at 2022-10-30T15:55:49.612416+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.20.0/twd-0.20.0.zip"
  version "0.20.0"
  sha256 "261ef044dacc717f29fb3324e735ae4a446f250b16661fdca028c09737e399c8"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.20.0", output
  end
end
