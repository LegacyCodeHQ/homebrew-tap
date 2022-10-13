# Generated with JReleaser 1.2.0 at 2022-10-13T13:58:34.709875+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.7.0/twd-0.7.0.zip"
  version "0.7.0"
  sha256 "bd0f725027febb33cf78383362abf83bf273e2fc023e712b7e4c5a1215e87120"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.7.0", output
  end
end
