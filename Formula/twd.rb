# Generated with JReleaser 1.2.0 at 2022-10-13T11:15:06.263262+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.6.0/twd-0.6.0.zip"
  version "0.6.0"
  sha256 "346a864c25b7bc44b316ba96ae21181e6fd8d9f017ad92e87a7dd0c8a5b8b993"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.6.0", output
  end
end
