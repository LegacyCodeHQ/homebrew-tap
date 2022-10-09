# Generated with JReleaser 1.2.0 at 2022-10-09T23:13:10.589928+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.3.0/twd-0.3.0.zip"
  version "0.3.0"
  sha256 "a4399f09c549f85493b87f8b7ee6273ef57689fb756587e285f8f63252727707"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.3.0", output
  end
end
