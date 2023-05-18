# Generated with JReleaser 1.2.0 at 2023-05-18T18:19:22.499786+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.45.0/twd-0.45.0.zip"
  version "0.45.0"
  sha256 "18e636dc2dc9a8ced454cd294ca5cb3af003cc033346ec5f9e1d663e0c3bc5a8"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.45.0", output
  end
end
