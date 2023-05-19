# Generated with JReleaser 1.2.0 at 2023-05-19T07:39:09.163689+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.46.0/twd-0.46.0.zip"
  version "0.46.0"
  sha256 "9f3a8eb8bfc9e8837bd1e464496ca39f86d06b3005534e1ee38a573524680ee6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.46.0", output
  end
end
