# Generated with JReleaser 1.2.0 at 2023-03-18T13:23:51.133892+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/redgreenio/cardbox"
  url "https://github.com/redgreenio/cardbox/releases/download/cardbox-0.1.0/cardbox-0.1.0.zip"
  version "0.1.0"
  sha256 "dcc6af35b9d547f9452ae3a70e3d8e7537c1e3a069c43849d6c7858b70249b91"
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
