# Generated with JReleaser 1.2.0 at 2023-05-21T20:35:04.687841+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.51.0/twd-0.51.0.zip"
  version "0.51.0"
  sha256 "93ed0d4fb3336be632b8dd143f4a118d05898d381df0787d94ada190d74cd3e2"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.51.0", output
  end
end
