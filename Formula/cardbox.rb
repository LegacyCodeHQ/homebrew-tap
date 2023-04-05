# Generated with JReleaser 1.2.0 at 2023-04-05T18:13:15.266847+05:30
class Cardbox < Formula
  desc "Create JARs from Android projects for jQAssistant."
  homepage "https://github.com/redgreenio/cardbox"
  url "https://github.com/redgreenio/cardbox/releases/download/cardbox-0.3.0/cardbox-0.3.0.zip"
  version "0.3.0"
  sha256 "e56515702f639679a63b51e767100bb77c93798e18e77acd2d0f99db44bc15e6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cardbox" => "cardbox"
  end

  test do
    output = shell_output("#{bin}/cardbox --version")
    assert_match "0.3.0", output
  end
end
