# Generated with JReleaser 1.2.0 at 2022-11-03T19:51:28.482942+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.23.0/twd-0.23.0.zip"
  version "0.23.0"
  sha256 "1a5157dd29a474ffa6015d18298ce5d652694a4df5eafd55933b134d8d42c0dd"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.23.0", output
  end
end
