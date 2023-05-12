# Generated with JReleaser 1.2.0 at 2023-05-12T10:15:25.314133+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/LegacyCodeHQ/cardbox"
  url "https://github.com/LegacyCodeHQ/cardbox/releases/download/cardbox-0.4.0/cardbox-0.4.0.zip"
  version "0.4.0"
  sha256 "d54b85e2c0df0a07ea253e01e9216970be7873305f2d57d23d0ae814a7ec6a44"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cardbox" => "cardbox"
  end

  test do
    output = shell_output("#{bin}/cardbox --version")
    assert_match "0.4.0", output
  end
end
