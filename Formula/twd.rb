# Generated with JReleaser 1.2.0 at 2022-11-17T08:20:51.692921+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.35.0/twd-0.35.0.zip"
  version "0.35.0"
  sha256 "0b6ee43d3aa133de03531580cb4ef86f985cb76aad7d3cab4af4d1adcae1983f"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.35.0", output
  end
end
