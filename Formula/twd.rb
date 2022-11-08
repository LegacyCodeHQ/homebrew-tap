# Generated with JReleaser 1.2.0 at 2022-11-08T22:41:21.298025+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.28.0/twd-0.28.0.zip"
  version "0.28.0"
  sha256 "52acedabd9d178d835e485560672626d4b7d3ec77058cdc060bf2eb1f2d3b668"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.28.0", output
  end
end
