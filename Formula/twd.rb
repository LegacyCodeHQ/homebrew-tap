# Generated with JReleaser 1.2.0 at 2022-11-10T07:05:25.797218+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.29.0/twd-0.29.0.zip"
  version "0.29.0"
  sha256 "8f6a77d2b50621e25cfd111b85baec76f552532327ed6ccb7e9ced15b5c3e8dd"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.29.0", output
  end
end
