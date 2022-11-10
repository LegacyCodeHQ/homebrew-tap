# Generated with JReleaser 1.2.0 at 2022-11-10T21:40:47.611634+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.31.0/twd-0.31.0.zip"
  version "0.31.0"
  sha256 "36c23397a64063a940828feb8fec901b7b01e95c70852656439e55f2c630fe3b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.31.0", output
  end
end
