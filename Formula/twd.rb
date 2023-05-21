# Generated with JReleaser 1.2.0 at 2023-05-21T11:42:09.079841+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.50.0/twd-0.50.0.zip"
  version "0.50.0"
  sha256 "002afcf5112c3050ad43e66e8ab7f3cc534d471d8f81a58e8f19907d1c296d64"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.50.0", output
  end
end
