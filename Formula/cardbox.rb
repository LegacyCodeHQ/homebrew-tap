# Generated with JReleaser 1.2.0 at 2023-03-18T13:55:41.868162+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/redgreenio/cardbox"
  url "https://github.com/redgreenio/cardbox/releases/download/cardbox-0.1.0/cardbox-0.1.0.zip"
  version "0.1.0"
  sha256 "720ca1ed44ef75fee67882205514e4d4a191a0d72f027a6aa7797eaa3a180a47"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cardbox" => "cardbox"
  end

  test do
    output = shell_output("#{bin}/cardbox --version")
    assert_match "0.1.0", output
  end
end
