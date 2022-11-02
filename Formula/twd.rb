# Generated with JReleaser 1.2.0 at 2022-11-02T22:18:35.412744+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.22.0/twd-0.22.0.zip"
  version "0.22.0"
  sha256 "3515ab7764924c0ce390868c90ec5a01fd679944e89526c602e5bbb8a8b84bf2"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.22.0", output
  end
end
