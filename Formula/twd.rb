# Generated with JReleaser 1.2.0 at 2022-10-26T22:02:06.146403+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.18.0/twd-0.18.0.zip"
  version "0.18.0"
  sha256 "89eb3ab6ce0798ef801b14c5536b07d87a7e9ef891e490d7371abd01fa0ef23b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.18.0", output
  end
end
