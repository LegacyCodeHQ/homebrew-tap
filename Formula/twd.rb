# Generated with JReleaser 1.2.0 at 2023-06-06T13:46:07.211146+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.58.0/twd-0.58.0.zip"
  version "0.58.0"
  sha256 "db3851799744b0a556de794ba447eebc1ae7474951230c5395a55a002ee146c3"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.58.0", output
  end
end
