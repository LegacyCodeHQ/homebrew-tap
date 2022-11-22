# Generated with JReleaser 1.2.0 at 2022-11-22T08:09:37.527434+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.36.0/twd-0.36.0.zip"
  version "0.36.0"
  sha256 "5bb55c7bac07203b8113ac7cd628fd0dab032ecc0d93dfb30c9146dd33c68070"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.36.0", output
  end
end
