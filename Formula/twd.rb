# Generated with JReleaser 1.2.0 at 2022-10-16T09:08:28.482349+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.11.0/twd-0.11.0.zip"
  version "0.11.0"
  sha256 "9c300198cae1c4704db305390939e1144aeb1b3b1006aea3388fff343e26dd0c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.11.0", output
  end
end
