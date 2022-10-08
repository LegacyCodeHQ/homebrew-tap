# Generated with JReleaser 1.2.0 at 2022-10-08T14:29:16.718581+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.1.0/twd-0.1.0.zip"
  version "0.1.0"
  sha256 "ac819eafcb0177ac1a0c10065188da62e3aa7a263224b86e3afdbc7f211eac95"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.1.0", output
  end
end
