# Generated with JReleaser 1.2.0 at 2022-10-10T00:52:16.743752+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.4.0/twd-0.4.0.zip"
  version "0.4.0"
  sha256 "92d9f4d548bbef9383c9ac34679006c0df6079002d24198e49d091782ef7e0ce"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.4.0", output
  end
end
