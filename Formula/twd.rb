# Generated with JReleaser 1.2.0 at 2023-05-26T11:41:02.190088+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.52.0/twd-0.52.0.zip"
  version "0.52.0"
  sha256 "ba82f2af15c83a3701d7ecbadbda2f1fa7f13d471b2f30f527c19c9bb638c424"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.52.0", output
  end
end
