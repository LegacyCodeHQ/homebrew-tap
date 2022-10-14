# Generated with JReleaser 1.2.0 at 2022-10-14T08:46:59.116507+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.10.0/twd-0.10.0.zip"
  version "0.10.0"
  sha256 "82b3bb547ffc752649d70b3f8fe5dce83b6e6636623b23a424b3bac64826cc7c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.10.0", output
  end
end
