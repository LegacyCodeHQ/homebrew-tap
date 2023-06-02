# Generated with JReleaser 1.2.0 at 2023-06-02T23:24:01.92668+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.54.0/twd-0.54.0.zip"
  version "0.54.0"
  sha256 "754d12d7e890e62c25fa0ea748e0ead6d34e66e3349427cdf0c35fff669d78aa"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.54.0", output
  end
end
