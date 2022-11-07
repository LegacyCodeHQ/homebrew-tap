# Generated with JReleaser 1.2.0 at 2022-11-07T19:52:05.808651+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.26.0/twd-0.26.0.zip"
  version "0.26.0"
  sha256 "d045ecf27b470a90799eea18a3a7d6ca79cfe1b5c0179e625b6f9006d0b1732d"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.26.0", output
  end
end
