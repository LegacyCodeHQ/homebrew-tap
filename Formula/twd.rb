# Generated with JReleaser 1.2.0 at 2023-05-20T06:05:00.301809+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.49.0/twd-0.49.0.zip"
  version "0.49.0"
  sha256 "91b4d36753db8d0785d6965eeb7f96387c0d1a7d34ca030d1c5461c42b8cf071"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.49.0", output
  end
end
