# Generated with JReleaser 1.2.0 at 2022-11-05T08:49:59.970645+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.25.0/twd-0.25.0.zip"
  version "0.25.0"
  sha256 "12273e23802706a750111e181c153b04bef6c6f3b08bac014c58e04f1b12bbf5"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.25.0", output
  end
end
