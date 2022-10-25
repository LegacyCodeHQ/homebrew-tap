# Generated with JReleaser 1.2.0 at 2022-10-25T20:37:57.490855+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.16.0/twd-0.16.0.zip"
  version "0.16.0"
  sha256 "8bc7c049147dc674bca188b13a1be45c6b2ad894bdf7cb6a48d28b3f9805a3d8"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.16.0", output
  end
end
