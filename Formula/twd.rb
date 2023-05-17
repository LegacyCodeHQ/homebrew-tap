# Generated with JReleaser 1.2.0 at 2023-05-17T19:56:01.707679+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.41.0/twd-0.41.0.zip"
  version "0.41.0"
  sha256 "c52c140abc4ac07cfbee5a78ba55b0684ad4f5866c5b3071f84ec68e9855b8d4"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.41.0", output
  end
end
