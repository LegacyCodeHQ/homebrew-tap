# Generated with JReleaser 1.2.0 at 2023-06-06T09:56:56.292153+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.57.0/twd-0.57.0.zip"
  version "0.57.0"
  sha256 "5d449e7a66324f2cc6643a6249cbfaea17648b2c1dbc1334e702c06d128f8f71"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.57.0", output
  end
end
