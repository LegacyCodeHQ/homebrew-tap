# Generated with JReleaser 1.2.0 at 2022-11-16T20:49:14.615232+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.34.0/twd-0.34.0.zip"
  version "0.34.0"
  sha256 "d4d202199ef92a35126d8a7bbdd074445d446037a2c4337dd198e6eb2f78919b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.34.0", output
  end
end
