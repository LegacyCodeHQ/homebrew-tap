# Generated with JReleaser 1.2.0 at 2023-05-18T14:50:06.307352+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.44.0/twd-0.44.0.zip"
  version "0.44.0"
  sha256 "fb49a42217f5d7ff55d24e50e1ec105a25d8de819021d90ccdaa9fcac6b0ba39"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.44.0", output
  end
end
