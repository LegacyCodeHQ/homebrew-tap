# Generated with JReleaser 1.2.0 at 2022-10-27T21:33:06.782956+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.19.0/twd-0.19.0.zip"
  version "0.19.0"
  sha256 "d0cfb43fcb3380fd0f13c800da148a1118467e3c0a51fdeffbbf1a33df3f540b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.19.0", output
  end
end
