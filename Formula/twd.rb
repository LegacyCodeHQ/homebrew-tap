# Generated with JReleaser 1.2.0 at 2023-05-18T10:27:57.877759+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.43.0/twd-0.43.0.zip"
  version "0.43.0"
  sha256 "2278297e3f71b650f39ff72409c2f61606527bb89e0b6b2c379f09c79de42345"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.43.0", output
  end
end
