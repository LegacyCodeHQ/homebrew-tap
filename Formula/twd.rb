# Generated with JReleaser 1.2.0 at 2022-10-16T21:56:23.837653+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.12.0/twd-0.12.0.zip"
  version "0.12.0"
  sha256 "33212269ca7442a048fcf1958e35adaa6994c8cb000ccc66f5f432b3b2d0fa4b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.12.0", output
  end
end
