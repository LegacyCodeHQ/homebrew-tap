# Generated with JReleaser 1.2.0 at 2022-10-14T07:30:41.116643+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.9.0/twd-0.9.0.zip"
  version "0.9.0"
  sha256 "efb4a45d715b15a2336e6cb117b82a64d435d4ede63bfd3c5dd0e10c3ebb4a86"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.9.0", output
  end
end
