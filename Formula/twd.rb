# Generated with JReleaser 1.2.0 at 2022-10-20T16:49:14.184603+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.14.0/twd-0.14.0.zip"
  version "0.14.0"
  sha256 "53fe901b9651e1af7cccc71cb64925aa63705d9aa77037b04083c2cdabd2533a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.14.0", output
  end
end
