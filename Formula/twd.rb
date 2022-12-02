# Generated with JReleaser 1.2.0 at 2022-12-02T23:26:03.062084+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.37.0/twd-0.37.0.zip"
  version "0.37.0"
  sha256 "3626b80baea40006f73406975b071ca4489150a507e31d3676fb2baa8d47dcfa"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.37.0", output
  end
end
