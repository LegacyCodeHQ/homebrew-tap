# Generated with JReleaser 1.2.0 at 2023-05-18T10:30:09.737728+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.43.0/twd-0.43.0.zip"
  version "0.43.0"
  sha256 "9e521ee170d36cd0702b7b14c1247335229d728a2c77a6b724ee6dbd89842e76"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.43.0", output
  end
end
