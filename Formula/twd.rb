# Generated with JReleaser 1.2.0 at 2022-10-09T18:35:05.966572+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.2.0/twd-0.2.0.zip"
  version "0.2.0"
  sha256 "320b7235b376427a39a2449a6fd147666762ddb382fae2a1c2c1949f9c12c9da"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.2.0", output
  end
end
