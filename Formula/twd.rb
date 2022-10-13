# Generated with JReleaser 1.2.0 at 2022-10-13T21:27:01.318229+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.8.0/twd-0.8.0.zip"
  version "0.8.0"
  sha256 "ae848aa785c76d2755ef828bc4f7dcde600ef266e7fde7f096c649429bd3160e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.8.0", output
  end
end
