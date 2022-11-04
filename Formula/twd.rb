# Generated with JReleaser 1.2.0 at 2022-11-04T11:40:13.619412+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/redgreenio/tumbleweed"
  url "https://github.com/redgreenio/tumbleweed/releases/download/twd-0.24.0/twd-0.24.0.zip"
  version "0.24.0"
  sha256 "2667ebd4eb3d9ef970a6a5fdf4fb84811ea3899d2009627f481811ae823b2cf6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.24.0", output
  end
end
