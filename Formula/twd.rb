# Generated with JReleaser 1.2.0 at 2022-11-01T18:22:14.170648+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.21.0/twd-0.21.0.zip"
  version "0.21.0"
  sha256 "e73715fa65a7376cf94d933bfe840698b7d09f7b963a2590f0d0f80f472bf377"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.21.0", output
  end
end
