# Generated with JReleaser 1.2.0 at 2023-06-05T20:50:42.06907+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.56.0/twd-0.56.0.zip"
  version "0.56.0"
  sha256 "b5fd56ad005783a21d54907c6c818e25b6092a69b335e2b4bea698b7a0d9a8a1"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.56.0", output
  end
end
