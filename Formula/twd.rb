# Generated with JReleaser 1.2.0 at 2022-10-17T23:02:26.462751+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.13.0/twd-0.13.0.zip"
  version "0.13.0"
  sha256 "e2c6098c3be45016876c5d678e11c4e9b110048b1efff186d4618b6ac63a6685"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.13.0", output
  end
end
