# Generated with JReleaser 1.2.0 at 2023-05-18T14:46:02.946916+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.44.0/twd-0.44.0.zip"
  version "0.44.0"
  sha256 "999a8b93263df5d13f53a3c68c0f52e73c9b35fb7bf7525c57a596a86e0ac6fe"
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
