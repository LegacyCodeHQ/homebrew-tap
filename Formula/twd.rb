# Generated with JReleaser 1.2.0 at 2022-10-23T21:08:55.600729+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.15.0/twd-0.15.0.zip"
  version "0.15.0"
  sha256 "e0c894bf5f5aecb898063504acd9043d25203efebbe983142d0d1e9b5e08ae83"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.15.0", output
  end
end
