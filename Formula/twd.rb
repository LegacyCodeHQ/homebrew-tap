# Generated with JReleaser 1.2.0 at 2022-10-25T23:16:26.316702+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.17.0/twd-0.17.0.zip"
  version "0.17.0"
  sha256 "17db1dbb838eb3fee1e36d5eb8057683f4ff0eef80d35488a3dc517a363796f1"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.17.0", output
  end
end
