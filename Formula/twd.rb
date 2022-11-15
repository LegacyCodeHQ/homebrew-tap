# Generated with JReleaser 1.2.0 at 2022-11-15T08:17:26.120927+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.33.0/twd-0.33.0.zip"
  version "0.33.0"
  sha256 "18215fb4533ff2249a410aa6368e385cafd0dfd82cd56c80d08680e0440d9216"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.33.0", output
  end
end
