# Generated with JReleaser 1.2.0 at 2022-10-12T06:03:53.428829+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.5.0/twd-0.5.0.zip"
  version "0.5.0"
  sha256 "ee661f3ae4e209b62498aeb8728a0eeb174be4e396009b5bc927ef8b7146188d"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.5.0", output
  end
end
