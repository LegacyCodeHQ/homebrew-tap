# Generated with JReleaser 1.2.0 at 2022-11-08T06:17:58.826807+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.27.0/twd-0.27.0.zip"
  version "0.27.0"
  sha256 "cff159cbfb51ac496cd9e4c20c02a75c883f721ed2282659c3f7063c7ac75d61"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.27.0", output
  end
end
