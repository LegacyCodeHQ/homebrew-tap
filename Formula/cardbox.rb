# Generated with JReleaser 1.2.0 at 2023-03-19T09:06:05.542775+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/redgreenio/cardbox"
  url "https://github.com/redgreenio/cardbox/releases/download/cardbox-0.2.0/cardbox-0.2.0.zip"
  version "0.2.0"
  sha256 "72c4de4b293342c121bcc765f8d4591424e7b798aeae740ec95cc28b3de70702"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cardbox" => "cardbox"
  end

  test do
    output = shell_output("#{bin}/cardbox --version")
    assert_match "0.2.0", output
  end
end
