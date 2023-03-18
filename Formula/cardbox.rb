# Generated with JReleaser 1.2.0 at 2023-03-18T13:42:31.875649+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/redgreenio/cardbox"
  url "https://github.com/redgreenio/cardbox/releases/download/cardbox-0.1.0/cardbox-0.1.0.zip"
  version "0.1.0"
  sha256 "a8ae658a19ff05b79fd401bafd7a6e6b0cc81066a8b3a7085ff104e9e3079eae"
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
