# Generated with JReleaser 1.2.0 at 2022-11-10T12:45:25.800683+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.30.0/twd-0.30.0.zip"
  version "0.30.0"
  sha256 "49152be585e0f631c40c8dad5136a78177d1d84667a6937ef8e2689a2785c889"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.30.0", output
  end
end
